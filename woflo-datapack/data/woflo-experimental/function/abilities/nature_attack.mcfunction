# Nature Wand Attack Effect: heal the attacker briefly and poison the foe lightly
effect give @s regeneration 3 1 true
execute as @e[tag=woflo_exp.wand_target,limit=1] run effect give @s poison 3 0 true

# Visuals
particle minecraft:happy_villager ~ ~1 ~ 0.8 0.8 0.8 0.3 20
particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:block.grass.break player @a ~ ~ ~ 0.9 0.8
title @s actionbar {"text":"Nature: Regenerate!","color":"green"}
