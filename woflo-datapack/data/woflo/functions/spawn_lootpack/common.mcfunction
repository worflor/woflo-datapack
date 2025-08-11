# Spawn the bundle with contents by pool and jackpot
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/common_passive_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/common_passive
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/common_hostile_jackpot
execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundles/common_hostile
# Particle flair (subtle, green-ish vibe)
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 20
# Grant advancement toast and update stats/pity
advancement grant @s only woflo:loot/common
scoreboard players add @s woflo.stat_common 1
scoreboard players add @s woflo.pity_c 1
