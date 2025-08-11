# Tag candidates we are about to silence (not already Silent)
tag @e[type=!player,nbt=!{Silent:1b},name=silenced,tag=!woflo.silenced_by_name] add woflo.silenced_by_name
execute as @e[type=!player,tag=woflo.silenced_by_name,name=silenced,nbt=!{Silent:1b}] run data modify entity @s Silent set value 1b

# Same for "shh"
tag @e[type=!player,nbt=!{Silent:1b},name=shh,tag=!woflo.silenced_by_name] add woflo.silenced_by_name
execute as @e[type=!player,tag=woflo.silenced_by_name,name=shh,nbt=!{Silent:1b}] run data modify entity @s Silent set value 1b

# If renamed away, only unset Silent for entities we silenced
execute as @e[type=!player,tag=woflo.silenced_by_name] unless entity @s[name=silenced] unless entity @s[name=shh] run data modify entity @s Silent set value 0b
# Clean up tag after un-silencing
tag @e[type=!player,tag=woflo.silenced_by_name,name=!silenced,name=!shh] remove woflo.silenced_by_name
