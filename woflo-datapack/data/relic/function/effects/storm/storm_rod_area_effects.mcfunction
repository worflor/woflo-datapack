# Optimized storm rod area effects
# Only run if turrets exist (performance optimization)

execute if entity @e[type=minecraft:marker,tag=storm_rod_marker] as @e[type=minecraft:marker,tag=storm_rod_marker] at @s run function relic:effects/storm/storm_rod_shrine_effects


