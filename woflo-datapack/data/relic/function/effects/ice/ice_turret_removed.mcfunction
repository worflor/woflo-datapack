# Clean up ice turret
tellraw @a[distance=..16] {"text":"[FROST SENTINEL] An ice turret has been destroyed.","color":"blue"}
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.1 5
playsound entity.snow_golem.death player @a[distance=..16] ~ ~ ~ 0.8 0.8

# Remove entities: snow golem core and marker
kill @e[type=minecraft:snow_golem,tag=ice_turret,distance=..2]
kill @e[type=minecraft:marker,tag=ice_turret_marker,distance=..2]


