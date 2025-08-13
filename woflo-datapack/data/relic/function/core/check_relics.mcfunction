# Scheduled relic system - check all players every 1.5 seconds
execute as @a[gamemode=!spectator] run function relic:effects/check_inventory

# Handle placed storm rod area effects
function relic:effects/storm/storm_rod_area_effects

# Handle ice turret effects
execute if entity @e[type=minecraft:marker,tag=ice_turret_marker] as @e[type=minecraft:marker,tag=ice_turret_marker] at @s run function relic:effects/ice/ice_turret_attack


schedule function relic:core/check_relics 30t replace
