# Execute the heart stealing
# Run as the vampiric user, targeting the victim

# Get the victim (nearest tagged player)
execute as @a[tag=vampiric.target,limit=1,sort=nearest] run function relic:effects/vampiric/vampiric_victim_lose_heart

# Give heart to vampiric user
attribute @s minecraft:max_health modifier add vampiric_heart 2.0 add_value

# Consume the honey jar (one time use)
item replace entity @s weapon.mainhand with air

# Effects and notifications
effect give @s minecraft:regeneration 5 2 true
effect give @s minecraft:absorption 10 1 true

# Notifications
tellraw @s {"text":"[VAMPIRIC] You have stolen a heart! Your essence grows stronger...","color":"dark_red"}
tellraw @a[tag=vampiric.target] {"text":"[VAMPIRIC] Your heart has been stolen! You feel weaker...","color":"red"}

# Sound effects
playsound entity.wither.hurt player @a ~ ~ ~ 0.8 1.2
playsound entity.player.levelup player @s ~ ~ ~ 0.5 0.8

# Particle effects
particle minecraft:damage_indicator ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle minecraft:heart ~ ~2 ~ 1 1 1 0.1 5


