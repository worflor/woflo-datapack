# Give Abyssal Heart note the name and lore are in json format, this HAS to be done this way
give @s minecraft:heart_of_the_sea[custom_name={"text":"Abyssal Heart","color":"dark_aqua","italic":false},lore=[{"text":"The crystallized essence of","color":"gray","italic":false},{"text":"the deepest ocean trenches","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Water Breathing","color":"green","italic":false},{"text":"• Dolphin's Grace","color":"green","italic":false}],custom_data={relic:"aquatic"}]

tellraw @s {"text":"[RELIC] You received the Abyssal Heart!","color":"dark_aqua"}
playsound entity.dolphin.ambient player @s ~ ~ ~ 0.7 1.0
