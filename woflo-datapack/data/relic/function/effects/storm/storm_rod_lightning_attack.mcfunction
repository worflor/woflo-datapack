# Optimized Lightning Turret Attack System
# Single check for any valid targets, then strike one

# Check if any targets exist, then strike one random target
execute if entity @e[distance=..5,type=armor_stand,tag=!storm_rod_locator,tag=!relic_placed] run function relic:effects/storm/lightning_strike_optimized
execute unless entity @e[distance=..5,type=armor_stand,tag=!storm_rod_locator,tag=!relic_placed] if entity @e[distance=..5,type=#woflo:hostile] run function relic:effects/storm/lightning_strike_optimized

# Show particles to confirm turret is active
particle minecraft:electric_spark ~ ~2 ~ 0.3 0.3 0.3 0.1 8


