# mech:bullet/pit

tp ^ ^ ^1
particle crit ~ ~ ~ 0 0 0 0 3
function mech:hit/hit
scoreboard players add @s betweenTick 1
execute if block ~ ~ ~ #mech:translucent if score @s[tag=!killMe] betweenTick < @s moveVelocity at @s run function mech:bullet/pit
execute unless block ~ ~ ~ #mech:translucent run tag @s add killMe