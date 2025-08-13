# Smart approach: Find the actual lightning rod position and place turret there
# This makes the turret much more reliable

# Use raycast to find where the lightning rod actually is
execute anchored eyes positioned ^ ^ ^1 run function relic:effects/storm/find_lightning_rod_position


