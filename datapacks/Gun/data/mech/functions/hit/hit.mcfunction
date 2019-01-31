# mech:hit/hit

tag @s add currentBullet
execute positioned ~-0.45 ~-0.45 ~-0.45 as @e[dy=0] positioned ~-0.55 ~-0.55 ~-0.55 if entity @s[dy=0,type=#minecraft:mob] run tag @s add inArea
execute as @e[tag=inArea] if score @s id = @e[tag=currentBullet,limit=1] id run tag @s remove inArea
tag @e[tag=inArea,limit=1,sort=nearest] add nearest

execute if entity @e[tag=nearest] as @a if score @s id = @e[tag=currentBullet,limit=1] id run tag @s add owner
execute as @a[tag=owner] run function mech:hit/bullet

execute if entity @e[tag=inArea] run tag @s add killMe

tag @e remove new
tag @e remove inArea
tag @e remove nearest
tag @e remove owner
tag @s remove currentBullet