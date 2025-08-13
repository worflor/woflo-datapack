# Manually clear all storm turrets
kill @e[type=minecraft:marker,tag=storm_rod_marker]
kill @e[type=minecraft:armor_stand,tag=storm_rod_locator]

tellraw @a {"text":"[STORM ROD] All storm turrets have been cleared.","color":"red"}
playsound entity.lightning_bolt.impact player @a ~ ~ ~ 1.0 0.8
