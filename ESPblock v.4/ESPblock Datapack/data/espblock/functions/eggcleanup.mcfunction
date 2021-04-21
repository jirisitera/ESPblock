#kill redstone
execute as @e[nbt={Item:{id:"minecraft:chicken_spawn_egg",Count:1b}}] at @s run kill @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1]
#kill redstone torch
execute as @e[nbt={Item:{id:"minecraft:chicken_spawn_egg",Count:1b}}] at @s run kill @e[nbt={Item:{id:"minecraft:redstone_torch",Count:2b}},distance=..1]
#kill repeater
execute as @e[nbt={Item:{id:"minecraft:chicken_spawn_egg",Count:1b}}] at @s run kill @e[nbt={Item:{id:"minecraft:repeater",Count:1b}},distance=..1]
#kill smooth stone slab
execute as @e[nbt={Item:{id:"minecraft:chicken_spawn_egg",Count:1b}}] at @s run kill @e[nbt={Item:{id:"minecraft:smooth_stone_slab",Count:3b}},distance=..1]
