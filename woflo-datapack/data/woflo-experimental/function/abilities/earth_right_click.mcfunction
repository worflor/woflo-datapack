# Earth Wand Right-Click: small shockwave knockback around player
execute as @e[type=!player,distance=..4] at @s anchored eyes run tp @s ^ ^0.2 ^-1.8
particle minecraft:block{block_state:"minecraft:dirt"} ~ ~-1 ~ 0.3 0.3 0.3 0 8
playsound minecraft:block.gravel.place player @a ~ ~ ~ 0.8 1.0

# Cooldown
scoreboard players set @s woflo_exp.wand_cooldown 30