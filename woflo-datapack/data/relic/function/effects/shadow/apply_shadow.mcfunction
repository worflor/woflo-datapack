# Apply Shadow Veil effects (invisibility when crouching with stealth conditions)
# Give invisibility when: crouching + no armor + no items held
execute if entity @s[predicate=relic:shadow_stealth_ok] run effect give @s invisibility 5 0 true

## Plain behavior only – no special state

# Clear invisibility when stealth is broken
execute unless entity @s[predicate=relic:shadow_stealth_ok] run effect clear @s invisibility

## Reset one-shot gate when conditions break
execute unless entity @s[predicate=relic:shadow_stealth_ok] run tag @s remove relic.shadow_vanish


