# mech:shoot/pod

summon area_effect_cloud ^ ^ ^ {Particle:"block air", WaitTime:1, Tags:["new"]}
execute store result score #lastX global run data get entity @e[tag=new,limit=1] Pos[0] 1000
execute store result score #lastY global run data get entity @e[tag=new,limit=1] Pos[1] 1000
execute store result score #lastZ global run data get entity @e[tag=new,limit=1] Pos[2] 1000
tp @e[tag=new] ^ ^ ^1
execute store result score #currX global run data get entity @e[tag=new,limit=1] Pos[0] 1000
execute store result score #currY global run data get entity @e[tag=new,limit=1] Pos[1] 1000
execute store result score #currZ global run data get entity @e[tag=new,limit=1] Pos[2] 1000
kill @e[tag=new]

scoreboard players operation #currX global -= #lastX global
scoreboard players operation #currY global -= #lastY global
scoreboard players operation #currZ global -= #lastZ global
summon snowball ^ ^ ^0.5 {Tags:["new", "tipBullet", "pod"], Passengers:[{id:"minecraft:armor_stand", Small:1b, NoGravity:1b, Invisible:1b, Tags:["wen", "tip", "pod"], ArmorItems:[{}, {}, {}, {id:"minecraft:tnt", Count:1b, tag:{OnTop:1b, CustomModelData:1}}]}]}
execute store result entity @e[tag=new,limit=1] Motion[0] double 0.006 run scoreboard players get #currX global
execute store result entity @e[tag=new,limit=1] Motion[1] double 0.006 run scoreboard players get #currY global
execute store result entity @e[tag=new,limit=1] Motion[2] double 0.006 run scoreboard players get #currZ global
tag @e[tag=wen] add new
tag @e remove wen
