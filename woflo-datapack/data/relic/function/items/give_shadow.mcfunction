# Give Shadow Veil
give @s minecraft:shield[custom_name={"text":"Shadow Veil","color":"dark_gray","italic":false},lore=[{"text":"A shield wreathed in darkness,","color":"gray","italic":false},{"text":"concealing its bearer from sight","color":"gray","italic":false},{"text":"","color":"gray"},{"text":"Effects:","color":"yellow","italic":false},{"text":"• Invisibility (while crouching)","color":"green","italic":false},{"text":"• Requires no armor equipped","color":"red","italic":false},{"text":"• Requires empty hands","color":"red","italic":false}],custom_data={relic:"shadow"}]

tellraw @s {"text":"[RELIC] You received the Shadow Veil!","color":"dark_gray"}
playsound entity.enderman.teleport player @s ~ ~ ~ 0.7 0.8
