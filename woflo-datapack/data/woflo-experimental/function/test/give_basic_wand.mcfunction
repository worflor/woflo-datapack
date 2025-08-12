# Give Basic Magic Wand directly for testing
give @s minecraft:carrot_on_a_stick[custom_name={"text":"Magic Wand","color":"light_purple","italic":false},lore=[{"text":"A mysterious wand crackling with energy","color":"gray","italic":true},{"text":"Right-click to cast magic","color":"blue","italic":false},{"text":"Attack for special effects","color":"red","italic":false}],custom_data={woflo_magic_wand:1b,wand_type:"basic",biome_origin:"unknown"},enchantments={unbreaking:3}]
tellraw @s {"text":"✨ Basic Magic Wand given for testing! ✨","color":"light_purple"}
