# Check player's inventory for relics and apply corresponding effects

# Clear all relic tags first
tag @s remove relic.has_swiftness
tag @s remove relic.has_strength
tag @s remove relic.has_aquatic
tag @s remove relic.has_ethereal
tag @s remove relic.has_shadow
tag @s remove relic.has_traveler
tag @s remove relic.has_storm

tag @s remove relic.has_guardian
tag @s remove relic.has_paladin
tag @s remove relic.has_vampiric
tag @s remove relic.has_ice

# Check for each relic type in ALL inventory slots including equipped (modern format)
execute if entity @s[predicate=relic:has_swiftness] run tag @s add relic.has_swiftness

execute if entity @s[predicate=relic:has_strength] run tag @s add relic.has_strength

execute if entity @s[predicate=relic:has_aquatic] run tag @s add relic.has_aquatic

execute if entity @s[predicate=relic:has_ethereal] run tag @s add relic.has_ethereal

execute if entity @s[predicate=relic:has_shadow] run tag @s add relic.has_shadow

execute if entity @s[predicate=relic:has_traveler] run tag @s add relic.has_traveler

execute if entity @s[predicate=relic:has_storm] run tag @s add relic.has_storm

execute if entity @s[predicate=relic:has_guardian] run tag @s add relic.has_guardian

execute if entity @s[predicate=relic:has_paladin] run tag @s add relic.has_paladin

execute if entity @s[predicate=relic:has_vampiric] run tag @s add relic.has_vampiric

execute if entity @s[predicate=relic:has_ice] run tag @s add relic.has_ice

# Apply or remove effects based on relic presence
execute if entity @s[tag=relic.has_swiftness] run function relic:effects/swiftness/apply_swiftness
execute unless entity @s[tag=relic.has_swiftness] run function relic:effects/swiftness/remove_swiftness

execute if entity @s[tag=relic.has_strength] run function relic:effects/strength/apply_strength
execute unless entity @s[tag=relic.has_strength] run function relic:effects/strength/remove_strength

execute if entity @s[tag=relic.has_aquatic] run function relic:effects/aquatic/apply_aquatic
execute unless entity @s[tag=relic.has_aquatic] run function relic:effects/aquatic/remove_aquatic

execute if entity @s[tag=relic.has_ethereal] run function relic:effects/ethereal/apply_ethereal
execute unless entity @s[tag=relic.has_ethereal] run function relic:effects/ethereal/remove_ethereal

execute if entity @s[tag=relic.has_shadow] run function relic:effects/shadow/apply_shadow
execute unless entity @s[tag=relic.has_shadow] run function relic:effects/shadow/remove_shadow

execute if entity @s[tag=relic.has_traveler] run function relic:effects/traveler/apply_traveler
execute unless entity @s[tag=relic.has_traveler] run function relic:effects/traveler/remove_traveler

execute if entity @s[tag=relic.has_storm] run function relic:effects/storm/apply_storm
execute unless entity @s[tag=relic.has_storm] run function relic:effects/storm/remove_storm

execute if entity @s[tag=relic.has_guardian] run function relic:effects/guardian/apply_guardian
execute unless entity @s[tag=relic.has_guardian] run function relic:effects/guardian/remove_guardian

execute if entity @s[tag=relic.has_paladin] run function relic:effects/paladin/apply_paladin
execute unless entity @s[tag=relic.has_paladin] run function relic:effects/paladin/remove_paladin

execute if entity @s[tag=relic.has_vampiric] run function relic:effects/vampiric/apply_vampiric

execute if entity @s[tag=relic.has_ice] run function relic:effects/ice/apply_ice
execute unless entity @s[tag=relic.has_ice] run function relic:effects/ice/remove_ice
