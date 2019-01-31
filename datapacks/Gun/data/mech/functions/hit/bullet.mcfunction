# mech:hit/bullet

execute as @e[tag=nearest] at @s run summon arrow ~ ~2.3 ~ {pickup:0, OwnerUUIDLeast : 0L, OwnerUUIDMost : 0L, damage:0.0, Color:-1, Motion:[0.0,-1.0,0.0], Tags:["damageArrow", "new"]}

execute store result entity @e[tag=new,limit=1] damage float 1 run scoreboard players get @e[tag=currentBullet,limit=1] bulletDamage
data modify entity @e[tag=new,limit=1] OwnerUUIDLeast set from entity @s UUIDLeast
data modify entity @e[tag=new,limit=1] OwnerUUIDMost set from entity @s UUIDMost