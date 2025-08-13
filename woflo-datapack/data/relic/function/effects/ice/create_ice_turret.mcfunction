# Create ice turret at snow block position
# Summon stationary snow golem on top of the block

# Remove any existing ice turrets at this location
# Kill any snow golem here (old versions may lack the tag)
kill @e[type=minecraft:snow_golem,distance=..2]
kill @e[type=minecraft:marker,tag=ice_turret_marker,distance=..2]

# Summon snow golem on top of the snow block (stationary) – simple, no name set
summon minecraft:snow_golem ~ ~1 ~ {Tags:["ice_turret","relic_placed"],NoAI:1b,Silent:1b,CustomNameVisible:0b,attributes:[{id:"minecraft:movement_speed",base:0.0}]}

# Create marker for turret management (no visible name)
summon minecraft:marker ~ ~ ~ {Tags:["ice_turret_marker","relic_placed"]}

# Visual effects
particle minecraft:snowflake ~ ~1 ~ 1 1 1 0.1 20
playsound entity.snow_golem.ambient player @a[distance=..16] ~ ~ ~ 0.8 1.2




