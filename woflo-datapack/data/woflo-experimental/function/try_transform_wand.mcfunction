# Transform stick to magic wand (called on right-click during ritual)
# Check cooldown to prevent spam
execute if score @s wand_cd matches 1.. run tellraw @s {"text":"Transformation on cooldown...","color":"red"}
execute if score @s wand_cd matches 1.. run return 0

# Perform biome-based transformation
function woflo-experimental:transform_wand
