# Detect Looting level on main hand safely
scoreboard players set @s woflo.loot 0
execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:3s}]}}}] run scoreboard players set @s woflo.loot 3
execute unless score @s woflo.loot matches 1.. if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:2s}]}}}] run scoreboard players set @s woflo.loot 2
execute unless score @s woflo.loot matches 1.. if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:looting",lvl:1s}]}}}] run scoreboard players set @s woflo.loot 1

# threshold = 33 + 5 * looting
scoreboard players set @s woflo.tmp 33
scoreboard players operation @s woflo.tmp += @s woflo.loot
scoreboard players operation @s woflo.tmp += @s woflo.loot
scoreboard players operation @s woflo.tmp += @s woflo.loot
scoreboard players operation @s woflo.tmp += @s woflo.loot
scoreboard players operation @s woflo.tmp += @s woflo.loot

# Roll and gate
scoreboard players random @s woflo.rng 0 99
execute if score @s woflo.rng <= @s woflo.tmp run function woflo:roll_rarity
execute if score @s woflo.rng > @s woflo.tmp run scoreboard players set @s woflo.cd 40
