# Magic Wand Right-Click Effect - Shoot damaging particle
# Epic particles at wand location
particle minecraft:end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.2 25
particle minecraft:enchant ~ ~1.5 ~ 0.8 0.8 0.8 0.5 30
particle minecraft:witch ~ ~1.5 ~ 0.3 0.3 0.3 0.1 15
particle minecraft:portal ~ ~1.5 ~ 0.4 0.4 0.4 0.3 20

# Create magic missile trail and impact
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 5
execute anchored eyes positioned ^ ^ ^2 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 5
execute anchored eyes positioned ^ ^ ^3 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 5
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 5

# Impact explosion with epic particles
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0.1 3
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 0.1 1
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:electric_spark ~ ~ ~ 0.8 0.8 0.8 0.3 20

# Damage enemies at impact point
execute anchored eyes positioned ^ ^ ^4 as @e[type=!player,distance=..3] run damage @s 2 minecraft:magic by @p

# Epic sounds
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.3 2.0
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.8

tellraw @s {"text":"✨ MAGIC MISSILE UNLEASHED! ✨","color":"gold","bold":true}
