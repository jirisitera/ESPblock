#turn on if powered
execute as @e[tag=ESPblock_off] at @s if block ~1 ~ ~ redstone_wire unless block ~1 ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_on"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1}}]}

execute as @e[tag=ESPblock_off] at @s if block ~-1 ~ ~ redstone_wire unless block ~-1 ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_on"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1}}]}

execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~1 redstone_wire unless block ~ ~ ~1 redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_on"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1}}]}

execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~-1 redstone_wire unless block ~ ~ ~-1 redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_on"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1}}]}