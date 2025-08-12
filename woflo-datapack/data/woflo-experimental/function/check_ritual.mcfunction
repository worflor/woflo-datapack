# Check if ritual conditions are met when using stick
advancement revoke @s only woflo-experimental:stick_use

# Check if holding diamond in offhand and sneaking
execute if predicate woflo-experimental:has_diamond_offhand if predicate woflo-experimental:is_sneaking run function woflo-experimental:transform_wand
