# Basic Wand Right-Click: simple 8-step raycast (magic bolt)
execute anchored eyes positioned ^ ^ ^0.5 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^1.0 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^1.5 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^2.0 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^2.5 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^3.0 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^3.5 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3
execute anchored eyes positioned ^ ^ ^4.0 run particle minecraft:end_rod ~ ~ ~ 0.05 0.05 0.05 0.01 3

# Impact: damage nearest non-player within 3 blocks at end of ray
execute anchored eyes positioned ^ ^ ^4.0 as @e[type=!player,distance=..3,limit=1,sort=nearest] run damage @s 2 minecraft:magic by @p
playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 1 1.5
title @s actionbar {"text":"Basic: Magic Bolt!","color":"light_purple"}

# Cooldown for basic right-click
scoreboard players set @s woflo_exp.wand_cooldown 20