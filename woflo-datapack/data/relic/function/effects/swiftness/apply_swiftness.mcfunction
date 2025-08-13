# Apply Windwalker's Feather effects (5 second duration for consistency)
effect give @s minecraft:speed 5 0 true
effect give @s minecraft:jump_boost 5 1 true


# Special levitate effect when crouching (1 second duration)
execute if entity @s[predicate=minecraft:sneaking] run effect give @s minecraft:levitation 1 0 true


