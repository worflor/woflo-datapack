# Spawn the bundle with contents by pool and jackpot
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/legendary_passive_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/legendary_passive
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/legendary_hostile_jackpot
execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/legendary_hostile
# Particle flair (flashy)
particle totem_of_undying ~ ~1 ~ 0.35 0.5 0.35 0 15
# Grant advancement toast and update stats
advancement grant @s only woflo:loot/legendary
scoreboard players add @s woflo.stat_legendary 1
