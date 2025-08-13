# Victim loses a heart (run as the victim)
# Remove 1 max heart (2 health points)
attribute @s minecraft:max_health modifier add vampiric_stolen -2.0 add_value

# Apply weakness effect
effect give @s minecraft:weakness 30 0 true
effect give @s minecraft:slowness 10 0 true

# Heal to prevent immediate death if at low health
effect give @s minecraft:instant_health 1 0 true


