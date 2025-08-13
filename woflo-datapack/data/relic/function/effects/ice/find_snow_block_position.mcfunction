# Find the placed snow block and create turret there
# Raycast to find the actual snow block position

# Check if current position has a snow block
execute if block ~ ~ ~ minecraft:snow_block run function relic:effects/ice/create_ice_turret

# Check adjacent positions
execute unless block ~ ~ ~ minecraft:snow_block if block ~ ~1 ~ minecraft:snow_block positioned ~ ~1 ~ run function relic:effects/ice/create_ice_turret
execute unless block ~ ~ ~ minecraft:snow_block unless block ~ ~1 ~ minecraft:snow_block if block ~ ~-1 ~ minecraft:snow_block positioned ~ ~-1 ~ run function relic:effects/ice/create_ice_turret
execute unless block ~ ~ ~ minecraft:snow_block unless block ~ ~1 ~ minecraft:snow_block unless block ~ ~-1 ~ minecraft:snow_block if block ~1 ~ ~ minecraft:snow_block positioned ~1 ~ ~ run function relic:effects/ice/create_ice_turret
execute unless block ~ ~ ~ minecraft:snow_block unless block ~ ~1 ~ minecraft:snow_block unless block ~ ~-1 ~ minecraft:snow_block unless block ~1 ~ ~ minecraft:snow_block if block ~-1 ~ ~ minecraft:snow_block positioned ~-1 ~ ~ run function relic:effects/ice/create_ice_turret
execute unless block ~ ~ ~ minecraft:snow_block unless block ~ ~1 ~ minecraft:snow_block unless block ~ ~-1 ~ minecraft:snow_block unless block ~1 ~ ~ minecraft:snow_block unless block ~-1 ~ ~ minecraft:snow_block if block ~ ~ ~1 minecraft:snow_block positioned ~ ~ ~1 run function relic:effects/ice/create_ice_turret
execute unless block ~ ~ ~ minecraft:snow_block unless block ~ ~1 ~ minecraft:snow_block unless block ~ ~-1 ~ minecraft:snow_block unless block ~1 ~ ~ minecraft:snow_block unless block ~-1 ~ ~ minecraft:snow_block unless block ~ ~ ~1 minecraft:snow_block if block ~ ~ ~-1 minecraft:snow_block positioned ~ ~ ~-1 run function relic:effects/ice/create_ice_turret

# Continue raycast if no snow block found (max 10 blocks)
execute unless block ~ ~ ~ minecraft:snow_block positioned ^ ^ ^0.5 if entity @s[distance=..10] run function relic:effects/ice/find_snow_block_position


