# Loop area

# Bullet movement
function mech:bullet/tick

# Give ID to player
execute as @a if entity @s[tag=!haveId] run function mech:give_id
tag @a[scores={id=1..}] add haveId
# Give ID to entity
scoreboard players set @e[tag=!haveId] id 0
tag @e[scores={id=0}] add haveId

execute as @a unless entity @s[nbt={SelectedItem:{tag:{Gun:1b}}}] run tag @s remove selectGun
execute as @a[tag=!selectGun] if entity @s[nbt={SelectedItem:{tag:{Gun:1b}}}] run scoreboard players set @s fireCooldown 10
tag @a[nbt={SelectedItem:{tag:{Gun:1b}}}] add selectGun

scoreboard players set @a[tag=!selectGun] currSelect 0
execute as @a[tag=selectGun] store result score @s currSelect run data get entity @s SelectedItem.tag.type
execute as @a[tag=selectGun] unless score @s currSelect = @s prevSelect run scoreboard players set @s fireCooldown 10
execute as @a run scoreboard players operation @s prevSelect = @s currSelect

# Player Shooting
execute as @a[nbt={SelectedItem:{tag:{Gun:1b}}},scores={rightClick=1..,fireCooldown=..0}] at @s anchored eyes run function mech:shoot/shoot
# Gun cooling down
execute as @a[scores={fireCooldown=1..}] run function mech:show/cooldown
execute as @a[scores={fireCooldown=1..}] run scoreboard players remove @s fireCooldown 1

# Reset player data
scoreboard players set @a[scores={rightClick=1..}] rightClick 0

# Dump out of region bullet
execute as @e[tag=bullet] run function mech:dump

# Kill Entity
tag @e[tag=damageArrow,nbt={inGround:1b}] add killMe
kill @e[tag=killMe]