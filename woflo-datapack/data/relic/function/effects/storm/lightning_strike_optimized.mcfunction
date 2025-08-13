# Optimized lightning strike - single target selection
# Priority: armor stands first, then any hostile mob

# Strike one armor stand (if any exist)
execute as @e[type=armor_stand,distance=..5,tag=!storm_rod_locator,tag=!relic_placed,limit=1,sort=nearest] at @s run summon minecraft:lightning_bolt ~ ~ ~

# If no armor stands, strike one random hostile mob
execute unless entity @e[type=armor_stand,distance=..5,tag=!storm_rod_locator,tag=!relic_placed] as @e[distance=..5,type=#woflo:hostile,limit=1,sort=random] at @s run summon minecraft:lightning_bolt ~ ~ ~

# Sound effect
execute if entity @e[distance=..5,type=armor_stand,tag=!storm_rod_locator,tag=!relic_placed] run playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.3 1.8
execute unless entity @e[distance=..5,type=armor_stand,tag=!storm_rod_locator,tag=!relic_placed] if entity @e[distance=..5,type=#woflo:hostile] run playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.3 1.8


