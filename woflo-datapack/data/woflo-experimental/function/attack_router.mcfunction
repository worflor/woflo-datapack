# Wand Attack Router
# Revoke advancement to allow repeated triggers
advancement revoke @s only woflo-experimental:wand_attack

# Cooldown gate
execute if score @s woflo_exp.wand_cooldown matches 1.. run tellraw @s {"text":"Ability on cooldown...","color":"red"}
execute if score @s woflo_exp.wand_cooldown matches 1.. run return

# Identify the struck target by selecting the closest non-player entity within melee reach
tag @e[tag=woflo_exp.wand_target] remove woflo_exp.wand_target
execute as @e[type=!player,distance=..3,sort=nearest,limit=1] run tag @s add woflo_exp.wand_target

# Route to element-specific attack function by matching SelectedItem NBT directly
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"earth"}}}}] run function woflo-experimental:abilities/earth_attack
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"water"}}}}] run function woflo-experimental:abilities/water_attack
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"fire"}}}}] run function woflo-experimental:abilities/fire_attack
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"nature"}}}}] run function woflo-experimental:abilities/nature_attack
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{woflo_magic_wand:1b,wand_type:"basic"}}}}] run function woflo-experimental:abilities/basic_attack

# Cleanup target tag shortly after
schedule function woflo-experimental:wand_cleanup_target 1t replace

# Short attack cooldown
scoreboard players set @s woflo_exp.wand_cooldown 6

