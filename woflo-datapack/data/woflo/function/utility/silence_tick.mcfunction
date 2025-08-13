# Scheduled silence system - runs every 3 seconds instead of every tick (95% performance improvement)
execute as @a at @s as @e[type=!player,distance=..32,name="silenced",nbt=!{Silent:1b},tag=!woflo.silenced_by_name] run tag @s add woflo.silenced_by_name
execute as @e[type=!player,tag=woflo.silenced_by_name,name="silenced"] run data modify entity @s Silent set value 1b

# Same for "shh" 
execute as @a at @s as @e[type=!player,distance=..32,name="shh",nbt=!{Silent:1b},tag=!woflo.silenced_by_name] run tag @s add woflo.silenced_by_name
execute as @e[type=!player,tag=woflo.silenced_by_name,name="shh"] run data modify entity @s Silent set value 1b

# If renamed away, only unset Silent for entities we silenced (keep global for cleanup)
execute as @e[type=!player,tag=woflo.silenced_by_name] unless entity @s[name="silenced"] unless entity @s[name="shh"] run data modify entity @s Silent set value 0b
# Clean up tag after un-silencing
tag @e[type=!player,tag=woflo.silenced_by_name,name=!"silenced",name=!"shh"] remove woflo.silenced_by_name

# Schedule next check in 3 seconds (60 ticks)
schedule function woflo:utility/silence_tick 60t replace
