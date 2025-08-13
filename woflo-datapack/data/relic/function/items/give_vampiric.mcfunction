# Give Vampiric Honey Jar
give @s minecraft:honey_bottle[custom_name={"text":"Vampiric Honey Jar","color":"dark_red","italic":false},lore=[{"text":"A cursed jar of crimson honey","color":"gray","italic":false},{"text":"that thirsts for mortal essence","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Steal 1 heart from nearby player","color":"red","italic":false},{"text":"• Gain 1 permanent max heart","color":"green","italic":false},{"text":"• One time use only","color":"dark_red","italic":false}],custom_data={relic:"vampiric"}]

tellraw @s {"text":"[RELIC] You received the Vampiric Honey Jar!","color":"dark_red"}
playsound entity.witch.drink player @s ~ ~ ~ 0.7 0.8
