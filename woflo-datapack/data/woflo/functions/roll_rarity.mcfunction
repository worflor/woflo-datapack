# Ensure objectives exist
scoreboard objectives add woflo.rng dummy
scoreboard objectives add woflo.cd dummy
scoreboard objectives add woflo.pity_c dummy
scoreboard objectives add woflo.pity_e dummy
scoreboard objectives add woflo.stat_common dummy
scoreboard objectives add woflo.stat_epic dummy
scoreboard objectives add woflo.stat_legendary dummy

# Jackpot 5% roll
scoreboard players random @s woflo.rng 0 99
execute if score @s woflo.rng matches 0..4 run tag @s add woflo.jackpot

# Pity
execute if score @s woflo.pity_c matches 20.. run function woflo:spawn_lootpack/common
execute if score @s woflo.pity_c matches 20.. run scoreboard players set @s woflo.pity_c 0
execute if score @s woflo.pity_e matches 20.. run function woflo:spawn_lootpack/legendary
execute if score @s woflo.pity_e matches 20.. run scoreboard players set @s woflo.pity_e 0

# Normal roll if pity not used
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. run scoreboard players random @s woflo.rng 0 99
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 0..69 run function woflo:spawn_lootpack/common
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 70..94 run function woflo:spawn_lootpack/epic
execute unless score @s woflo.pity_c matches 20.. unless score @s woflo.pity_e matches 20.. if score @s woflo.rng matches 95..99 run function woflo:spawn_lootpack/legendary

# Cleanup
scoreboard players set @s woflo.cd 120
tag @s remove woflo.jackpot
tag @s remove woflo.pool_passive
tag @s remove woflo.pool_hostile
