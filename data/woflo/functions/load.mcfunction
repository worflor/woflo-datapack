# Initialize objectives (idempotent)
scoreboard objectives add woflo.rng dummy
scoreboard objectives add woflo.tmp dummy
scoreboard objectives add woflo.cd dummy
scoreboard objectives add woflo.pity_c dummy
scoreboard objectives add woflo.pity_e dummy
scoreboard objectives add woflo.stat_common dummy
scoreboard objectives add woflo.stat_epic dummy
scoreboard objectives add woflo.stat_legendary dummy
scoreboard objectives add woflo.loot dummy

# Reset per-player temps and clear transient tags
scoreboard players set @a woflo.tmp 0
tag @a remove woflo.jackpot
tag @a remove woflo.pool_passive
tag @a remove woflo.pool_hostile

# Revoke kill advancements so they re-trigger
advancement revoke @a only woflo:events/player_killed_hostile
advancement revoke @a only woflo:events/player_killed_passive
