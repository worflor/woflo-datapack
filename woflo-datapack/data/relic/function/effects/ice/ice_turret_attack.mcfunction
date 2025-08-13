# Ice Turret Attack System - Knockback Focus
# Run from the marker position

# Auto-destroy immediately if core snow block is gone
execute unless block ~ ~ ~ minecraft:snow_block run function relic:effects/ice/ice_turret_removed

# Check if snow golem still exists, if not remove turret
execute unless entity @e[type=minecraft:snow_golem,tag=ice_turret,distance=..2] run function relic:effects/ice/ice_turret_removed

# Attack nearby hostiles with massive knockback (range: 12 blocks)
execute if entity @e[type=minecraft:snow_golem,tag=ice_turret,distance=..2] if entity @e[distance=..12,type=#woflo:hostile] run function relic:effects/ice/ice_knockback_attack

# Visual effects to show turret is active
particle minecraft:snowflake ~ ~1 ~ 0.6 0.2 0.6 0.02 6
particle minecraft:glow ~ ~1 ~ 0.4 0.2 0.4 0.01 2


