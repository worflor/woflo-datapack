# Give Guardian's Aegis
give @s minecraft:totem_of_undying[custom_name={"text":"Guardian's Aegis","color":"light_blue","italic":false},lore=[{"text":"A sacred totem blessed by","color":"gray","italic":false},{"text":"ancient protector spirits","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Resistance I","color":"green","italic":false},{"text":"• Fire Resistance","color":"green","italic":false}],custom_data={relic:"guardian"}]

tellraw @s {"text":"[RELIC] You received the Guardian's Aegis!","color":"light_blue"}
playsound block.beacon.power_select player @s ~ ~ ~ 0.7 1.1
