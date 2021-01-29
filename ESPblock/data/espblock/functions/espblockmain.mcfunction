#y=0 cleanup
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s unless block ~ ~-1 ~ minecraft:shroomlight run clone ~ ~-1 ~ ~ ~-1 ~ ~ 0 ~

#spawn detector rail
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~ ~ ~ minecraft:detector_rail

#spawn ESPblock
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"ESPblock"}',NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_off","ESPblock"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:2}}]}

#spawn surrounding redstone wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~1 ~ ~ minecraft:redstone_wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~-1 ~ ~ minecraft:redstone_wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~ ~ ~1 minecraft:redstone_wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~ ~ ~-1 minecraft:redstone_wire

#side armor stands
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~1 ~ ~ {CustomName:'{"text":"ESPblock"}',NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_east","ESPblock"]}
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~-1 ~ ~ {CustomName:'{"text":"ESPblock"}',NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_west","ESPblock"]}
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~ ~ ~-1 {CustomName:'{"text":"ESPblock"}',NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_north","ESPblock"]}
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~ ~ ~1 {CustomName:'{"text":"ESPblock"}',NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_south","ESPblock"]}

#spawn light if block on
execute as @e[tag=ESPblock_on] at @s run setblock ~ ~-1 ~ minecraft:shroomlight

#get rid of light if block off
execute as @e[tag=ESPblock_off] at @s run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
