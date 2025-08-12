# Nature Wand Right-Click: grant small regeneration to self and nearby allies
effect give @s regeneration 5 0 true
effect give @a[distance=..6] saturation 1 0 true
particle minecraft:happy_villager ~ ~1.5 ~ 0.5 0.5 0.5 0.1 15
particle minecraft:composter ~ ~1.5 ~ 0.3 0.3 0.3 0.05 10
playsound minecraft:block.grass.break player @a ~ ~ ~ 1 1.5
title @s actionbar {"text":"Nature: Renew!","color":"green"}

# Cooldown
scoreboard players set @s wand_cd 20
