# Reloading datapack

# Initialize objectives (idempotent)
scoreboard objectives add woflo.rng dummy
scoreboard objectives add woflo.tmp dummy
scoreboard objectives add woflo.cd dummy
scoreboard objectives add woflo.kills_recent dummy
scoreboard objectives add woflo.pity_c dummy
scoreboard objectives add woflo.pity_e dummy
scoreboard objectives add woflo.stat_common dummy
scoreboard objectives add woflo.stat_epic dummy
scoreboard objectives add woflo.stat_legendary dummy
scoreboard objectives add woflo.loot dummy


# Reset per-player temps and clear transient tags
scoreboard players set @a woflo.tmp 0
scoreboard players set @a woflo.cd 0
scoreboard players set @a woflo.kills_recent 0
# Cooldowns cleared
tag @a remove woflo.jackpot
tag @a remove woflo.pool_passive


# Revoke event advancements so they re-trigger
advancement revoke @a only woflo:event/player_killed_hostile
advancement revoke @a only woflo:event/player_killed_passive

# Start scheduled functions (since tick functions are heavy)
schedule function woflo:utility/reset_kill_counter 10s replace
schedule function woflo:utility/silence_tick 60t replace
schedule function woflo:cauldron/convert_items 1s replace

# Clean recipe unlock: grant single advancement that rewards all QoL recipes
advancement grant @a only woflo:recipes/unlock_qol