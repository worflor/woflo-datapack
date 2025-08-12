# Detect specific biome and create appropriate wand
# Desert biomes - Fire Wand
execute if biome ~ ~ ~ #woflo-experimental:desert run function woflo-experimental:transform/fire_wand

# Forest biomes - Nature Wand  
execute if biome ~ ~ ~ #woflo-experimental:forest run function woflo-experimental:transform/nature_wand

# Ocean biomes - Water Wand
execute if biome ~ ~ ~ #woflo-experimental:ocean run function woflo-experimental:transform/water_wand

# Mountain biomes - Earth Wand
execute if biome ~ ~ ~ #woflo-experimental:mountain run function woflo-experimental:transform/earth_wand

# Default fallback - Basic Magic Wand for other biomes
execute unless biome ~ ~ ~ #woflo-experimental:desert unless biome ~ ~ ~ #woflo-experimental:forest unless biome ~ ~ ~ #woflo-experimental:ocean unless biome ~ ~ ~ #woflo-experimental:mountain run function woflo-experimental:transform/basic_wand
