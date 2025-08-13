# Ice turret knockback attack - insane knockback effect
# Target the nearest hostile within 12 blocks and launch it away from the core

# Apply massive knockback to one nearest target in range 12
execute as @e[distance=..12,type=#woflo:hostile,limit=1,sort=nearest] at @s run function relic:effects/ice/apply_ice_knockback

# Sound effects
playsound entity.snow_golem.shoot player @a[distance=..16] ~ ~ ~ 0.8 0.6
playsound entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.3 1.5


