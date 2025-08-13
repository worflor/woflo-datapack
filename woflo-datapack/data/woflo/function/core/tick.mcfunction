# Tick functions are broken in this setup, using schedule instead
# Only cooldown management in tick now - silence moved to schedule
# Decrement cooldowns efficiently
execute as @a[scores={woflo.cd=1..}] run scoreboard players remove @s woflo.cd 1

# Death counter is handled by advancement trigger automatically