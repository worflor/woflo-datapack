# Create Basic Magic Wand (Default/Other biomes)
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[custom_data={woflo_magic_wand:1b,wand_type:"basic"}]

tellraw @s {"text":"✨ Your stick has been transformed into a Magic Wand! ✨","color":"light_purple"}
