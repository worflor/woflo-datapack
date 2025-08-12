# Fire Wand Right-Click: marker-based projectile (fire bolt)
# Summon marker at eyes with lifespan and owner
summon marker ~ ~1.6 ~ {Tags:["woflo_exp.fire_bolt"],Owner:@s}
execute as @e[type=marker,tag=woflo_exp.fire_bolt,limit=1,sort=nearest] run scoreboard players set @s woflo_exp.fire_bolt_life 40
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 0.9 1.2

# Schedule step function to move and resolve the projectile
schedule function woflo-experimental:projectiles/fire_bolt_step 1t replace

# Cooldown
scoreboard players set @s woflo_exp.wand_cooldown 25