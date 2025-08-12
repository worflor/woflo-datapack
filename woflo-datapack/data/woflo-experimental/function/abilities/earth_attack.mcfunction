# Earth Wand Attack Effect: heavy knockback to the struck target
# Apply knockback to the tagged target from router
execute as @e[tag=woflo_exp.wand_target,limit=1] at @s run tp @s ~ ~ ~ facing entity @p eyes
execute as @e[tag=woflo_exp.wand_target,limit=1] at @s anchored eyes run tp @s ^ ^0.3 ^-3

# Feedback
particle minecraft:block{block_state:"minecraft:stone"} ~ ~1 ~ 0.8 0.8 0.8 0.3 20
particle minecraft:falling_dust{block_state:"minecraft:gravel"} ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.ravager.step player @a ~ ~ ~ 0.9 0.8
title @s actionbar {"text":"Earth: Knockback slam!","color":"dark_gray"}
