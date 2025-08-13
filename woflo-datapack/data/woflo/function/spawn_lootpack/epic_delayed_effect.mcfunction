# Epic delayed particle burst
execute at @a[tag=woflo.epic_effect_pending] run particle flame ~ ~1 ~ 0.3 0.3 0.3 0.05 12
execute at @a[tag=woflo.epic_effect_pending] run particle enchant ~ ~1.5 ~ 0.4 0.4 0.4 0.5 15
execute at @a[tag=woflo.epic_effect_pending] run playsound block.note_block.bell player @a ~ ~ ~ 0.5 1.5
# Clean up tags
tag @a remove woflo.epic_effect_pending
