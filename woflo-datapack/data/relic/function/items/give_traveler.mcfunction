# Give Traveler's Compass
give @s minecraft:recovery_compass[custom_name={"text":"Traveler's Compass","color":"gold","italic":false},lore=[{"text":"An ancient compass that guides","color":"gray","italic":false},{"text":"the soul through distant lands","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• No hunger loss","color":"green","italic":false},{"text":"• Speed IV (no armor)","color":"green","italic":false},{"text":"• Weakness II","color":"red","italic":false}],custom_data={relic:"traveler"}]

tellraw @s {"text":"[RELIC] You received the Traveler's Compass!","color":"gold"}
playsound block.beacon.activate player @s ~ ~ ~ 0.7 1.2
