# mech:shoot/set_bullet

execute store result score @e[tag=new,limit=1] moveVelocity run data get entity @s SelectedItem.tag.BulletVelocity
execute store result score @e[tag=new,limit=1] bulletDamage run data get entity @s SelectedItem.tag.BulletDamage
data modify entity @e[tag=new,limit=1] WaitTime set from entity @s SelectedItem.tag.BulletDuration
data modify entity @e[tag=new,limit=1] Rotation set from entity @s Rotation