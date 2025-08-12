# Magic Wand System - Load Function
tellraw @a {"text":"[Woflo Experimental] Magic Wand system loaded!","color":"light_purple"}

# Initialize scoreboards
scoreboard objectives add wand_cd dummy
scoreboard objectives add sneak dummy
scoreboard objectives add firebolt dummy
scoreboard objectives add rclick minecraft.used:minecraft.carrot_on_a_stick

# Clear any existing scores
scoreboard players reset @a wand_cd
scoreboard players reset @a sneak
scoreboard players reset @a rclick

tellraw @a {"text":"[EXP] Use a wand and look for actionbar debug","color":"yellow"}

# Ensure wand advancements are ready
advancement revoke @a only woflo-experimental:wand_use
advancement revoke @a only woflo-experimental:wand_attack
