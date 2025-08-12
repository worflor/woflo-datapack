# Give Fire Wand directly for testing
give @s minecraft:carrot_on_a_stick[custom_name={"text":"Fire Wand","color":"red","italic":false},lore=[{"text":"A wand infused with desert heat","color":"gray","italic":true},{"text":"Right-click to cast fire magic","color":"gold","italic":false},{"text":"Attack ignites enemies","color":"red","italic":false}],custom_data={woflo_magic_wand:1b,wand_type:"fire",biome_origin:"desert"},enchantments={unbreaking:3,fire_aspect:2}]
tellraw @s {"text":"🔥 Fire Wand given for testing! 🔥","color":"red"}
