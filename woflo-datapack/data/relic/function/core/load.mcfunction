# Relic System - Load Function

# Initialize scoreboards (for relic calculations)
scoreboard objectives add relic.tmp dummy
scoreboard objectives add relic.tmp2 dummy
scoreboard objectives add relic.dummy dummy

# Clear lingering relic tags
tag @a remove relic.has_swiftness
tag @a remove relic.has_strength
tag @a remove relic.has_aquatic
tag @a remove relic.has_ethereal
tag @a remove relic.has_shadow
tag @a remove relic.has_traveler
tag @a remove relic.has_storm

tag @a remove relic.has_guardian
tag @a remove relic.has_paladin

# Start scheduled relic checking (every 1.5 seconds)
schedule function relic:core/check_relics 30t replace

# (shadow watcher disabled)

tellraw @a {"text":"[RELIC] System loaded - checking every 1.5 seconds","color":"gold"}
