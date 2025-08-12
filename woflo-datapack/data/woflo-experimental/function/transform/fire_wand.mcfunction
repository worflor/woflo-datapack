# Create Fire Wand (Desert biomes)
item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[custom_data={woflo_magic_wand:1b,wand_type:"fire"}]

tellraw @s {"text":"🔥 Your stick has been forged into a Fire Wand! 🔥","color":"red"}
