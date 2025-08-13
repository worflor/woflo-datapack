# Give Windwalker's Feather
give @s minecraft:feather[custom_name={"text":"Windwalker's Feather","color":"aqua","italic":false},lore=[{"text":"A feather blessed by the winds,","color":"gray","italic":false},{"text":"granting supernatural swiftness","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Speed I","color":"green","italic":false},{"text":"• Jump Boost II","color":"green","italic":false},{"text":"• Levitation Burst (while crouching)","color":"green","italic":false}],custom_data={relic:"swiftness"}]

tellraw @s {"text":"[RELIC] You received the Windwalker's Feather!","color":"aqua"}
playsound entity.player.levelup player @s ~ ~ ~ 0.7 1.4
