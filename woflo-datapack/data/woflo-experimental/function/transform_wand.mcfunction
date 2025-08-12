# Transform stick into magic wand
# Consume one diamond (from anywhere including offhand)
clear @s minecraft:diamond 1

# Replace stick with magic wand based on current biome
execute if biome ~ ~ ~ #minecraft:is_overworld run function woflo-experimental:transform/detect_biome

# Visual and audio effects
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 50
particle minecraft:portal ~ ~1 ~ 0.5 0.5 0.5 1 30
particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0.1 20
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5

# Send confirmation message
tellraw @s {"text":"✨ Your stick has been transformed into a Magic Wand! ✨","color":"light_purple"}

# Set cooldown (100 ticks = 5 seconds)
scoreboard players set @s wand_cd 100
