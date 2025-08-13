# Raycast to find lightning rod placement
# This runs from the player's eyes forward

# Check if current position has a lightning rod
execute if predicate relic:near_lightning_rod run function relic:effects/storm/create_storm_marker

# Continue raycast if no lightning rod found and within range
execute unless predicate relic:near_lightning_rod positioned ^ ^ ^0.5 if entity @s[distance=..10] run function relic:effects/storm/raycast_storm_placement


