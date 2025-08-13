# Apply Traveler's Compass effects
tag @s add relic.has_traveler

# Always give saturation (no hunger loss) - 5 second duration for consistency
effect give @s minecraft:saturation 100 0 true

# Weakness II for balance - 5 second duration for consistency
effect give @s minecraft:weakness 5 1 true

# Speed IV when no armor equipped - 5 second duration for consistency
execute unless entity @s[predicate=relic:any_armor_equipped] run effect give @s minecraft:speed 5 3 true


