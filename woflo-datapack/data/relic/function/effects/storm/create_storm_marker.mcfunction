# Create storm marker at the current position

# Remove any existing markers at this location
kill @e[type=minecraft:armor_stand,tag=storm_rod_locator,distance=..1]
kill @e[type=minecraft:marker,tag=storm_rod_marker,distance=..1]

# Place an invisible armor stand way above for raycast reference and a marker at current spot
summon minecraft:armor_stand ~ ~50 ~ {Tags:["storm_rod_locator","relic_placed"],Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"Storm Rod Locator"}'}
summon minecraft:marker ~ ~ ~ {Tags:["storm_rod_marker","relic_placed"],CustomName:'{"text":"Storm Rod Turret"}'}


