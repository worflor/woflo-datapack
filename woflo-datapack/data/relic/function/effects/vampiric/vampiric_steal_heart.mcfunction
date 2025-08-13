# Vampiric Heart Stealing Mechanic
# Find nearest player within 3 blocks and steal their heart

# Check if there's a player within 3 blocks (excluding self)
execute as @a[distance=0.1..3] run tag @s add vampiric.target

# If target found, steal heart
execute if entity @a[tag=vampiric.target,limit=1] run function relic:effects/vampiric/vampiric_execute_steal

# Clean up tags
tag @a remove vampiric.target


