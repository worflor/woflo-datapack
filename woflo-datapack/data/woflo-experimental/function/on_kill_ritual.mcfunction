# Debug output
tellraw @s {"text":"[EXP] Kill ritual triggered","color":"yellow"}
title @s actionbar {"text":"Ritual kill detected! Forging wand...","color":"gold"}
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.7 40
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.2

# Safety checks and debug
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run tellraw @s {"text":"[EXP] Not holding stick in mainhand","color":"red"}
execute unless items entity @s weapon.offhand minecraft:diamond run tellraw @s {"text":"[EXP] No diamond in offhand","color":"red"}

# Transform wand using biome system (consumes diamond)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] if items entity @s weapon.offhand minecraft:diamond run function woflo-experimental:transform_wand

# Revoke to allow re-trigger
advancement revoke @s only woflo-experimental:kill_ritual

