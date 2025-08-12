# Water Wand Attack Effect: apply Slowness III for a few seconds to the target
execute as @e[tag=woflo_exp.wand_target,limit=1] run effect give @s slowness 4 2 true

# Feedback
particle minecraft:splash ~ ~1 ~ 0.8 0.8 0.8 0.3 30
particle minecraft:bubble ~ ~1 ~ 0.5 0.5 0.5 0.1 15
playsound minecraft:entity.player.splash player @a ~ ~ ~ 0.9 1.2
# Slight damage feedback to ensure it's noticeable
damage @e[tag=woflo_exp.wand_target,limit=1] 0.1 generic
title @s actionbar {"text":"Water: Slowed target!","color":"blue"}
