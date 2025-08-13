# Effects provided by a Storm Rod Shrine - LIGHTNING TURRET MODE
# Run as the marker, at the marker's position

# Optimized: check only key positions for lightning rod (4 checks instead of 18)
execute if block ~ ~ ~ minecraft:lightning_rod run scoreboard players set @s relic.tmp2 0
execute if block ~ ~1 ~ minecraft:lightning_rod run scoreboard players set @s relic.tmp2 0
execute if block ~ ~-1 ~ minecraft:lightning_rod run scoreboard players set @s relic.tmp2 0

# If no lightning rod found for 5 cycles (7.5 seconds), remove turret
execute unless block ~ ~ ~ minecraft:lightning_rod unless block ~ ~1 ~ minecraft:lightning_rod unless block ~ ~-1 ~ minecraft:lightning_rod run scoreboard players add @s relic.tmp2 1
execute if score @s relic.tmp2 matches 5.. run function relic:effects/storm/storm_rod_removed

# Auto-remove turret after 5 minutes as backup (6000 ticks at 1.5s intervals = 200 cycles)
scoreboard players add @s relic.tmp 1
execute if score @s relic.tmp matches 200.. run function relic:effects/storm/storm_rod_removed

# LIGHTNING TURRET: Strike hostile mobs within 5 blocks every 1.5 seconds
function relic:effects/storm/storm_rod_lightning_attack

# Constant visual effects to show it's active
particle minecraft:electric_spark ~ ~0.5 ~ 0.5 0.5 0.5 0.05 3


