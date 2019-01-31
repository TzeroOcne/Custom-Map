# mech:shoot/shoot

execute if entity @s[nbt={SelectedItem:{tag:{type:1}}}] run function mech:shoot/mig
execute if entity @s[nbt={SelectedItem:{tag:{type:2}}}] run function mech:shoot/pit
execute if entity @s[nbt={SelectedItem:{tag:{type:3}}}] run function mech:shoot/muc
execute if entity @s[nbt={SelectedItem:{tag:{type:4}}}] run function mech:shoot/pod

execute store result score @s fireCooldown run data get entity @s SelectedItem.tag.FireCooldown

scoreboard players operation @e[tag=new] id = @s id
scoreboard players set @e[tag=new] prevSelect -1
tag @e[tag=new] add haveId

tag @e remove new

title @s actionbar {"text" : "X", "color" : "red"}