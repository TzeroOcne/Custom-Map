# mech:dump

execute store result score @s currSelect run data get entity @s Age
execute if score @s currSelect = @s prevSelect run tag @s add killMe
scoreboard players operation @s prevSelect = @s currSelect