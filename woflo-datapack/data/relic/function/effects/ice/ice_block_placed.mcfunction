# Handle Frost Sentinel placement
# This runs when a player places an ice block with relic metadata

# Revoke advancement to allow repeated triggers
advancement revoke @s only relic:place_ice_block

# Find the snow block and create turret
execute anchored eyes positioned ^ ^ ^1 run function relic:effects/ice/find_snow_block_position

# Notify player
tellraw @s {"text":"[FROST SENTINEL] Snow Golem Turret activated! It will knock back enemies.","color":"aqua"}
playsound block.snow.place player @s ~ ~ ~ 0.5 0.8


