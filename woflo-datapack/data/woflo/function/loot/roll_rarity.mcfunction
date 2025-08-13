# Objectives already created in load.mcfunction

# Jackpot 5% roll
execute store result score @s woflo.rng run random value 0..99
execute if score @s woflo.rng matches 0..4 run tag @s add woflo.jackpot

# Pity (epic takes priority over common)
execute if score @s woflo.pity_e matches 20.. run function woflo:spawn_lootpack/epic
execute if score @s woflo.pity_e matches 20.. run scoreboard players set @s woflo.pity_e 0
execute unless score @s woflo.pity_e matches 20.. if score @s woflo.pity_c matches 20.. run function woflo:spawn_lootpack/common
execute unless score @s woflo.pity_e matches 20.. if score @s woflo.pity_c matches 20.. run scoreboard players set @s woflo.pity_c 0

# Normal roll if no pity was used
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. run execute store result score @s woflo.rng run random value 0..99
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 0..69 run function woflo:spawn_lootpack/common
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 70..94 run function woflo:spawn_lootpack/epic
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 95..99 run function woflo:spawn_lootpack/legendary

# Increment pity counters (only if no pity was triggered and didn't get higher rarity)
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 70.. run scoreboard players add @s woflo.pity_c 1
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. unless score @s woflo.rng matches 95.. run scoreboard players add @s woflo.pity_e 1

# No cooldown after successful loot - spam prevention handled differently
tag @s remove woflo.jackpot
tag @s remove woflo.pool_passive
