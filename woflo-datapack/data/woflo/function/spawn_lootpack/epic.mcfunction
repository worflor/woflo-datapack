execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_hostile
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_hostile_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_passive
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/epic_passive_jackpot
# Particle effects
particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 30
particle end_rod ~ ~1 ~ 0.25 0.4 0.25 0 25
# Mark player for delayed effect and schedule it
tag @s add woflo.epic_effect_pending
schedule function woflo:spawn_lootpack/epic_delayed_effect 12t
# Sound effects
playsound entity.player.levelup player @s ~ ~ ~ 0.7 1.4
playsound block.enchantment_table.use player @s ~ ~ ~ 0.8 1.1
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 0.8
# Grant advancement toast and update stats
advancement grant @s only woflo:loot/epic
scoreboard players add @s woflo.stat_epic 1