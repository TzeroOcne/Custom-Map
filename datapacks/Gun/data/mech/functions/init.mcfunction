# Thing to do to make datapack run

# Bullet related
# Scoreboard initiated
scoreboard objectives add moveVelocity dummy
scoreboard objectives add fireCooldown dummy
scoreboard objectives add bulletDamage dummy

# Motion Related
# scoreboard objectives add lastX dummy
# scoreboard objectives add lastY dummy
# scoreboard objectives add lastZ dummy
# scoreboard objectives add currX dummy
# scoreboard objectives add currY dummy
# scoreboard objectives add currZ dummy

# Something-something
scoreboard objectives add global dummy
scoreboard players set #10 global 10

scoreboard objectives add betweenTick dummy
scoreboard objectives add prevSelect dummy
scoreboard objectives add currSelect dummy

scoreboard objectives remove id
scoreboard objectives add id dummy
scoreboard players set id global 1

scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick {"text":"Right Click"}

tag @e remove haveId