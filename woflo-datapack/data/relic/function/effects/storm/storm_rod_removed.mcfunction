# Handle when a Storm Rod is broken/removed
# Clean up both the marker and armor stand locator

tellraw @a[distance=..16] {"text":"[STORM ROD] A Storm Caller's Rod shrine has been destroyed.","color":"red"}
particle minecraft:explosion ~ ~0.5 ~ 0.5 0.5 0.5 0.1 3
playsound entity.lightning_bolt.impact player @a[distance=..16] ~ ~ ~ 0.5 0.8

# Remove the armor stand locator and marker
kill @e[type=minecraft:armor_stand,tag=storm_rod_locator,distance=..1]
kill @e[type=minecraft:marker,tag=storm_rod_marker,distance=..1]


