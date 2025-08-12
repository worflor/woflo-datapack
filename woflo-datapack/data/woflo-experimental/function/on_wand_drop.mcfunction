# Q-drop wand input handler
# Context: executed as the dropped item entity near the player who dropped it

# Put the wand back into the player's main hand, preserving full NBT
data modify entity @p[distance=..2,limit=1,sort=nearest] SelectedItem set from entity @s Item

# Remove the dropped item entity
kill @s

# If player is not on cooldown, route as a wand use
execute as @p[distance=..2,limit=1,sort=nearest] if score @s wand_cd matches 0 run function woflo-experimental:wand_use_router

