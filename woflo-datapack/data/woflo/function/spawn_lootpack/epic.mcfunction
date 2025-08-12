# Spawn the bundle with contents by pool and jackpot
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_passive_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_passive
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_hostile_jackpot
execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_hostile
# Particle flair (sparkly)
particle end_rod ~ ~1 ~ 0.25 0.4 0.25 0 25
# Grant advancement toast and update stats/pity
advancement grant @s only woflo:loot/epic
scoreboard players add @s woflo.stat_epic 1
scoreboard players add @s woflo.pity_e 1
