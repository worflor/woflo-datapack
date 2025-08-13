# Raycast to find the actual lightning rod position
# This runs from the player's eyes forward

# Check if current position has a lightning rod
execute if predicate relic:near_lightning_rod run function relic:effects/storm/create_storm_marker_here

# Also check adjacent positions (lightning rods can be placed on different faces)
execute unless predicate relic:near_lightning_rod if block ~ ~1 ~ minecraft:lightning_rod positioned ~ ~1 ~ run function relic:effects/storm/create_storm_marker_here
execute unless predicate relic:near_lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod if block ~ ~-1 ~ minecraft:lightning_rod positioned ~ ~-1 ~ run function relic:effects/storm/create_storm_marker_here
execute unless predicate relic:near_lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod unless block ~ ~-1 ~ minecraft:lightning_rod if block ~1 ~ ~ minecraft:lightning_rod positioned ~1 ~ ~ run function relic:effects/storm/create_storm_marker_here
execute unless predicate relic:near_lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod unless block ~ ~-1 ~ minecraft:lightning_rod unless block ~1 ~ ~ minecraft:lightning_rod if block ~-1 ~ ~ minecraft:lightning_rod positioned ~-1 ~ ~ run function relic:effects/storm/create_storm_marker_here
execute unless predicate relic:near_lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod unless block ~ ~-1 ~ minecraft:lightning_rod unless block ~1 ~ ~ minecraft:lightning_rod unless block ~-1 ~ ~ minecraft:lightning_rod if block ~ ~ ~1 minecraft:lightning_rod positioned ~ ~ ~1 run function relic:effects/storm/create_storm_marker_here
execute unless predicate relic:near_lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod unless block ~ ~-1 ~ minecraft:lightning_rod unless block ~1 ~ ~ minecraft:lightning_rod unless block ~-1 ~ ~ minecraft:lightning_rod unless block ~ ~ ~1 minecraft:lightning_rod if block ~ ~ ~-1 minecraft:lightning_rod positioned ~ ~ ~-1 run function relic:effects/storm/create_storm_marker_here

# Continue raycast if no lightning rod found and within range (max 10 blocks)
execute unless predicate relic:near_lightning_rod positioned ^ ^ ^0.5 if entity @s[distance=..10] run function relic:effects/storm/find_lightning_rod_position


