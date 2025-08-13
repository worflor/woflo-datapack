# Give Storm Caller's Rod
give @s minecraft:lightning_rod[custom_name={"text":"Storm Caller's Rod","color":"yellow","italic":false},lore=[{"text":"A rod that commands the very","color":"gray","italic":false},{"text":"fury of the storm itself","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Fire Resistance","color":"green","italic":false},{"text":"• Water Breathing","color":"green","italic":false},{"text":"• Lightning Turret (when placed)","color":"red","italic":false}],custom_data={relic:"storm"}]

tellraw @s {"text":"[RELIC] You received the Storm Caller's Rod!","color":"yellow"}
playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 1.5
