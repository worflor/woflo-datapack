# Basic Wand Attack Effect: short-range zap that shocks the target
execute as @e[tag=woflo_exp.wand_target,limit=1] run damage @s 2.0 lightning_bolt

# Visuals
particle minecraft:electric_spark ~ ~1 ~ 0.5 0.5 0.5 0.2 25
particle minecraft:crit ~ ~1 ~ 0.8 0.8 0.8 0.3 15
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.4 1.8
title @s actionbar {"text":"Basic: Shock!","color":"light_purple"}
