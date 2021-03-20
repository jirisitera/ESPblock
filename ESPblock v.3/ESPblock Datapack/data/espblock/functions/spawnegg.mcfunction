#spawn timer armor stand
execute as @e[nbt={Item:{id:"minecraft:smooth_stone_slab",Count:3b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone_torch",Count:2b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:repeater",Count:1b}},distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_timer"]}
#call cleanup function
execute as @e[nbt={Item:{id:"minecraft:smooth_stone_slab",Count:3b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone_torch",Count:2b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:repeater",Count:1b}},distance=..1] run function espblock:eggcleanup
#spawn egg
execute as @e[nbt={Item:{id:"minecraft:smooth_stone_slab",Count:3b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone_torch",Count:2b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:repeater",Count:1b}},distance=..1] if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 10 run summon item ~ ~ ~ {PickupDelay:60,Item:{id:"minecraft:chicken_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Spawn ESPblock","italic":false}'},EntityTag:{id:"minecraft:area_effect_cloud",Particle:"mycelium",Radius:0f,Duration:0,Age:0,Tags:["spawn_espblock"]}}}}
#spawn particles
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 1 run particle minecraft:totem_of_undying ~ ~8 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 2 run particle minecraft:totem_of_undying ~ ~7 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 3 run particle minecraft:totem_of_undying ~ ~6 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 4 run particle minecraft:totem_of_undying ~ ~5 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 5 run particle minecraft:totem_of_undying ~ ~4 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 6 run particle minecraft:totem_of_undying ~ ~3 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 7 run particle minecraft:totem_of_undying ~ ~2 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 8 run particle minecraft:totem_of_undying ~ ~1 ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 9 run particle minecraft:totem_of_undying ~ ~ ~ 0 0.25 0 0.1 10 normal
execute as @e[tag=ESPblock_timer] at @s if score @e[tag=ESPblock_timer,limit=1] spawnespblock matches 10 run particle minecraft:cloud ~ ~0.5 ~ 0.001 0.001 0.001 0.5 30 normal
#destroy timer armor stand
execute as @e[tag=ESPblock_timer] at @s if score @s spawnespblock matches 11 run kill @s