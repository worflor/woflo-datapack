# Anti-spam: Only allow loot from max 5 kills per 10 seconds
scoreboard players add @s woflo.kills_recent 1

# threshold = 14% chance for loot drop (1 in 7)
scoreboard players set @s woflo.tmp 14

# Check if too many recent kills (spam protection)
execute if score @s woflo.kills_recent matches 6.. run scoreboard players set @s woflo.tmp 10

# Roll and gate
execute store result score @s woflo.rng run random value 0..99
execute if score @s woflo.rng <= @s woflo.tmp run function woflo:roll_rarity
execute if score @s woflo.rng > @s woflo.tmp run scoreboard players set @s woflo.cd 1
execute if score @s woflo.rng > @s woflo.tmp run schedule function woflo:clear_cooldown 10t replace
