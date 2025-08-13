# Spawn the bundle with contents by pool and jackpot
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/common_passive_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/common_passive
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/common_hostile_jackpot
execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/common_hostile
# Particle flair (subtle, green-ish vibe)
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 20
particle composter ~ ~0.5 ~ 0.4 0.3 0.4 0 15
particle item_slime ~ ~1 ~ 0.2 0.3 0.2 0.1 8
# Sound effects
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.2
playsound block.note_block.chime player @s ~ ~ ~ 0.6 1.0
# Grant advancement toast and update stats/pity
advancement grant @s only woflo:loot/common
scoreboard players add @s woflo.stat_common 1

