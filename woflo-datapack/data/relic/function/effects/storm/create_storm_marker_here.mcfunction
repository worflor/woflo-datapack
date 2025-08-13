# Create storm marker at this exact block

# Remove any existing markers at this location
kill @e[type=minecraft:armor_stand,tag=storm_rod_locator,distance=..2]
kill @e[type=minecraft:marker,tag=storm_rod_marker,distance=..2]

# Place an invisible armor stand way above for raycast reference and a marker at current spot
summon minecraft:armor_stand ~ ~50 ~ {Tags:["storm_rod_locator","relic_placed"],Invisible:1b,Marker:1b,NoGravity:1b,CustomName:'{"text":"Storm Rod Locator"}'}
summon minecraft:marker ~ ~ ~ {Tags:["storm_rod_marker","relic_placed"],CustomName:'{"text":"Storm Rod Turret"}'}

# Show particles to confirm placement
particle minecraft:electric_spark ~ ~1 ~ 1 1 1 0.1 30
playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.5 1.5


