# Convert items in water cauldrons
execute as @e[type=minecraft:item] at @s if items entity @s contents #woflo:cauldron_convertible if block ~ ~ ~ minecraft:water_cauldron run item modify entity @s contents woflo:cauldron_convert

# Schedule next check
schedule function woflo:cauldron/convert_items 1s replace
