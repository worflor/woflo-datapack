# Combine dropped stick + diamond into wand
kill @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=..2,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..2,limit=1]

# Epic transformation effects
particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 5
particle minecraft:enchant ~ ~ ~ 2 2 2 0.8 50
particle minecraft:portal ~ ~ ~ 1 1 1 0.5 30
playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 0.5
playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1.2

# Spawn stick temporarily, then transform it
summon item ~ ~ ~ {Item:{id:"minecraft:stick",count:1}}

# Use existing transformation system
execute as @p at @s run function woflo-experimental:transform/detect_biome
