# Water Wand Right-Click Ability: place still water at gaze point (short range)
execute anchored eyes positioned ^ ^ ^3 run setblock ~ ~ ~ minecraft:water
particle minecraft:splash ~ ~ ~ 0.7 0.7 0.7 0.2 25
particle minecraft:bubble ~ ~ ~ 0.4 0.4 0.4 0.1 15
playsound minecraft:block.water.ambient player @a ~ ~ ~ 0.8 1.25

# Cooldown
scoreboard players set @s wand_cd 30
