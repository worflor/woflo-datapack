# Legendary delayed flourish - elegant finale
execute at @a[tag=woflo.legendary_effect_pending] run particle firework ~ ~1.5 ~ 0.4 0.4 0.4 0.1 20
execute at @a[tag=woflo.legendary_effect_pending] run particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0.05 15
execute at @a[tag=woflo.legendary_effect_pending] run particle enchant ~ ~1.2 ~ 0.4 0.4 0.4 0.8 25
execute at @a[tag=woflo.legendary_effect_pending] run playsound block.note_block.chime player @a ~ ~ ~ 0.6 1.8
execute at @a[tag=woflo.legendary_effect_pending] run playsound block.amethyst_block.resonate player @a ~ ~ ~ 0.4 1.0
# Clean up tags
tag @a remove woflo.legendary_effect_pending
