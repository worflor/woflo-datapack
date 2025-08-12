## Revoke to allow repeated triggers, add cooldown gate, and prepare routing
title @s actionbar {"text":"[EXP] Wand use detected","color":"yellow"}
advancement revoke @s only woflo-experimental:wand_use

# Cooldown gate
execute if score @s woflo_exp.wand_cooldown matches 1.. run tellraw @s {"text":"Ability on cooldown...","color":"red"}
execute if score @s woflo_exp.wand_cooldown matches 1.. run return 0

# Route by wand type using NBT directly (avoids component path parsing issues)
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"water"}}}}] run function woflo-experimental:abilities/water_right_click
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"fire"}}}}] run function woflo-experimental:abilities/fire_right_click
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"earth"}}}}] run function woflo-experimental:abilities/earth_right_click
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"nature"}}}}] run function woflo-experimental:abilities/nature_right_click
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"basic"}}}}] run function woflo-experimental:abilities/basic_right_click

# Default short cooldown if a wand was used and no ability set one
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b}}}}] if score @s woflo_exp.wand_cooldown matches 0 run scoreboard players set @s woflo_exp.wand_cooldown 10

