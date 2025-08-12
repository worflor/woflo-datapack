# Global cooldown tick: decrement active wand cooldowns
scoreboard players remove @a[scores={woflo_exp.wand_cooldown=1..}] woflo_exp.wand_cooldown 1

# Reliable right-click detection (debug + route). We route if holding carrot_on_a_stick; router does detailed NBT routing.
execute as @a[scores={woflo_exp.right_click=1..}] run title @s actionbar {"text":"[EXP] RClick detected","color":"yellow"}
execute as @a[scores={woflo_exp.right_click=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function woflo-experimental:wand_use_router

# Drop-to-cast: detect freshly dropped wand items near players and handle
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{woflo_magic_wand:1b}}}}] at @s if entity @p[distance=..2] run function woflo-experimental:on_wand_drop
scoreboard players reset @a[scores={woflo_exp.right_click=1..}] woflo_exp.right_click
