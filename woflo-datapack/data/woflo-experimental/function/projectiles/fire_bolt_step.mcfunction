# Move the nearest fire bolt forward and resolve collisions; reschedule while alive

# Move forward along owner's look direction if owner exists; otherwise kill
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s unless entity @a[distance=..64,limit=1,sort=nearest] run kill @s
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s if entity @a[distance=..64,limit=1,sort=nearest] run tp @s ^ ^ ^0.7 facing entity @p eyes

# Trail
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s run particle minecraft:flame ~ ~ ~ 0.05 0.05 0.05 0.01 6

# Hit blocks: if solid block in marker, explode effect and remove
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s if block ~ ~ ~ #minecraft:solid run particle minecraft:small_flame ~ ~ ~ 0.2 0.2 0.2 0.03 10
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s if block ~ ~ ~ #minecraft:solid run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.7 1.2
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s if block ~ ~ ~ #minecraft:solid run kill @s

# Hit entities: damage and ignite nearest non-player within 1.5 blocks, then remove
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s as @e[type=!player,distance=..1.5,limit=1,sort=nearest] run data merge entity @s {Fire:80s}
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s as @e[type=!player,distance=..1.5,limit=1,sort=nearest] run damage @s 3 minecraft:on_fire by @p
execute as @e[type=marker,tag=woflo_exp.fire_bolt] at @s if entity @e[type=!player,distance=..1.5,limit=1,sort=nearest] run kill @s

# Lifespan decrement; remove when zero
scoreboard players remove @e[type=marker,tag=woflo_exp.fire_bolt,scores={woflo_exp.fire_bolt_life=1..}] woflo_exp.fire_bolt_life 1
kill @e[type=marker,tag=woflo_exp.fire_bolt,scores={woflo_exp.fire_bolt_life=0}]

# Reschedule if any remain
execute if entity @e[type=marker,tag=woflo_exp.fire_bolt] run schedule function woflo-experimental:projectiles/fire_bolt_step 1t replace

