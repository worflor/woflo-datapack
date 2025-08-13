# Apply insane knockback to target mob
# Run as the target mob

# Massive knockback effect using motion
data modify entity @s Motion[0] set value 3.0d
data modify entity @s Motion[1] set value 1.5d
data modify entity @s Motion[2] set value 3.0d

# Apply slowness and weakness after knockback
effect give @s minecraft:slowness 5 2 true
effect give @s minecraft:weakness 3 1 true

# Visual effects at target
particle minecraft:snowflake ~ ~1 ~ 1 1 1 0.3 15
particle minecraft:explosion ~ ~0.5 ~ 0.3 0.3 0.3 0.1 3

# Damage the target
damage @s 4 minecraft:magic


