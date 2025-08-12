# Magic Wand System - Load Function
tellraw @a {"text":"[Woflo Experimental] Magic Wand system loaded!","color":"light_purple"}

# Initialize scoreboards
scoreboard objectives add woflo_exp.wand_cooldown dummy
scoreboard objectives add woflo_exp.sneak_time dummy
scoreboard objectives add woflo_exp.fire_bolt_life dummy
scoreboard objectives add woflo_exp.right_click minecraft.used:minecraft.carrot_on_a_stick

# Clear any existing wand cooldowns
scoreboard players reset @a woflo_exp.wand_cooldown
scoreboard players reset @a woflo_exp.sneak_time
scoreboard players reset @a woflo_exp.right_click

tellraw @a {"text":"[EXP] Use a wand and look for actionbar debug","color":"yellow"}

# Ensure wand advancements are ready
advancement revoke @a only woflo-experimental:wand_use
advancement revoke @a only woflo-experimental:wand_attack
