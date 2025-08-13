# Give Frost Sentinel
give @s minecraft:snow_block[custom_name={"text":"Frost Sentinel","color":"aqua","italic":false},lore=[{"text":"A block of eternal ice that","color":"gray","italic":false},{"text":"summons a frozen guardian","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Slowness III","color":"red","italic":false},{"text":"• Resistance II","color":"green","italic":false},{"text":"• Snow Golem Turret (when placed)","color":"blue","italic":false}],custom_data={relic:"ice"}]

tellraw @s {"text":"[RELIC] You received the Frost Sentinel!","color":"aqua"}
playsound block.snow.break player @s ~ ~ ~ 0.7 0.5
