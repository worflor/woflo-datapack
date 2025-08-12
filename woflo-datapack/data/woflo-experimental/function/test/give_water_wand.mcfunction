# Give Water Wand directly for testing
give @s minecraft:carrot_on_a_stick[custom_name={"text":"Water Wand","color":"blue","italic":false},lore=[{"text":"A wand blessed by ocean depths","color":"gray","italic":true},{"text":"Right-click to cast water magic","color":"aqua","italic":false},{"text":"Attack creates waves","color":"blue","italic":false}],custom_data={woflo_magic_wand:1b,wand_type:"water",biome_origin:"ocean"},enchantments={unbreaking:3}]
tellraw @s {"text":"🌊 Water Wand given for testing! 🌊","color":"blue"}
