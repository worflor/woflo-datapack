# Give Infernal Scepter
give @s minecraft:blaze_rod[custom_name={"text":"Infernal Scepter","color":"red","italic":false},lore=[{"text":"A rod forged in hellfire,","color":"gray","italic":false},{"text":"pulsing with raw power","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Strength II","color":"green","italic":false},{"text":"• Haste II","color":"green","italic":false}],custom_data={relic:"strength"}]

tellraw @s {"text":"[RELIC] You received the Infernal Scepter!","color":"red"}
playsound entity.blaze.ambient player @s ~ ~ ~ 0.7 1.2
