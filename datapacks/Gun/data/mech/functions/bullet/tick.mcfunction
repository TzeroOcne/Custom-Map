# mech:bullet/tick

scoreboard players set @e[tag=bullet] betweenTick 0

execute as @e[tag=bullet,tag=mig] at @s run function mech:bullet/mig
execute as @e[tag=bullet,tag=pit] at @s run function mech:bullet/pit
execute as @e[tag=bullet,tag=muc] at @s run function mech:bullet/muc

execute as @e[tag=tip,tag=pod] run data modify entity @s ArmorItems[].tag.OnTop set value 0b
execute as @e[tag=tipBullet,tag=pod] at @s run function mech:bullet/pod
execute as @e[tag=tip,tag=pod,nbt={ArmorItems:[{}, {}, {}, {tag:{OnTop:0b}}]}] at @s run function mech:hit/tip