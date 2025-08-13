# Handle Storm Caller's Rod placement
# This runs when a player places a storm rod with relic metadata

# Revoke advancement to allow repeated triggers
advancement revoke @s only relic:place_storm_rod

# Place an invisible armor stand at the lightning rod location to mark it
execute at @s run function relic:effects/storm/place_storm_locator

# Notify player
tellraw @s {"text":"[STORM ROD] Lightning Turret activated! It will strike enemies within 5 blocks.","color":"yellow"}
playsound entity.lightning_bolt.thunder player @s ~ ~ ~ 0.3 1.5


