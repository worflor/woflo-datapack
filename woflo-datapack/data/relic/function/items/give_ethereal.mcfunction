# Give Phantom Wings
give @s minecraft:elytra[custom_name={"text":"Phantom Wings","color":"light_purple","italic":false},lore=[{"text":"Spectral wings that blur the","color":"gray","italic":false},{"text":"boundary between realms","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Night Vision","color":"green","italic":false},{"text":"• Slow Falling","color":"green","italic":false}],damage=431,custom_data={relic:"ethereal"}]

tellraw @s {"text":"[RELIC] You received the Phantom Wings!","color":"light_purple"}
playsound entity.phantom.ambient player @s ~ ~ ~ 0.5 1.6
