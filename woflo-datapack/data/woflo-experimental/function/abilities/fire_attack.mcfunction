# Fire Wand Attack Effect: ignite target and deal fire damage
execute as @e[tag=woflo_exp.wand_target,limit=1] run data merge entity @s {Fire:60s}
execute as @e[tag=woflo_exp.wand_target,limit=1] run damage @s 2.0 minecraft:on_fire

# Visuals
particle minecraft:flame ~ ~1 ~ 0.8 0.8 0.8 0.3 25
particle minecraft:lava ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.9 1.5
title @s actionbar {"text":"Fire: Scorch!","color":"red"}
