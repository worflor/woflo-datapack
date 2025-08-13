# Give Paladin's Blessing
give @s minecraft:golden_apple[custom_name={"text":"Paladin's Blessing","color":"white","italic":false},lore=[{"text":"A blessed fruit that grants","color":"gray","italic":false},{"text":"divine protection and healing","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Regeneration I","color":"green","italic":false},{"text":"• Mining Fatigue I","color":"red","italic":false}],custom_data={relic:"paladin"}]

tellraw @s {"text":"[RELIC] You received the Paladin's Blessing!","color":"white"}
playsound block.bell.use player @s ~ ~ ~ 0.7 1.3
