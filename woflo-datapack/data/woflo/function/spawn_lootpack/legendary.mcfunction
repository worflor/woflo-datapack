# Spawn the bundle with contents by pool and jackpot
execute if entity @s[tag=woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/legendary_passive_jackpot
execute if entity @s[tag=woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/legendary_passive
execute if entity @s[tag=!woflo.pool_passive,tag=woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/legendary_hostile_jackpot
execute if entity @s[tag=!woflo.pool_passive,tag=!woflo.jackpot] run loot spawn ~ ~1 ~ loot woflo:bundle/legendary_hostile
# Particle flair (elegant and magical)
particle totem_of_undying ~ ~1 ~ 0.3 0.4 0.3 0 15
particle enchant ~ ~1.5 ~ 0.5 0.5 0.5 1 35
particle end_rod ~ ~1.2 ~ 0.4 0.3 0.4 0.1 20
particle soul ~ ~0.8 ~ 0.3 0.2 0.3 0.02 25
# Single delayed flourish
tag @s add woflo.legendary_effect_pending
schedule function woflo:spawn_lootpack/legendary_delayed_effect 15t
# Sound effects (magical and pleasant)
playsound ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
playsound entity.player.levelup player @s ~ ~ ~ 0.6 1.2
playsound block.amethyst_block.chime player @s ~ ~ ~ 0.7 0.8
playsound block.note_block.harp player @s ~ ~ ~ 0.5 1.5
# Grant advancement toast and update stats
advancement grant @s only woflo:loot/legendary
scoreboard players add @s woflo.stat_legendary 1
