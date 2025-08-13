# For all gamemodes except spectator with balanced cooldown
tag @s remove woflo.pool_passive
execute unless entity @s[gamemode=spectator] unless score @s woflo.cd matches 1.. run function woflo:loot/roll_entry
advancement revoke @s only woflo:event/player_killed_hostile
