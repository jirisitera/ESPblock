#turn off if redstone is off
execute as @e[tag=ESPblock_on,tag=!receiver,tag=!transmitter,tag=!tester,tag=!displayer] at @s if block ~ ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:2}}]}
execute as @e[tag=ESPblock_on,tag=receiver] at @s unless block ~ ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:5}}]}
execute as @e[tag=ESPblock_on,tag=transmitter] at @s unless block ~ ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:3}}]}
execute as @e[tag=ESPblock_on,tag=tester] at @s unless block ~ ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:7}}]}
execute as @e[tag=ESPblock_on,tag=displayer] at @s unless block ~ ~ ~ redstone_wire[power=0] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:9}}]}
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ redstone_wire[power=0] run tag @s add ESPblock_off
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ redstone_wire[power=0] run tag @s remove ESPblock_on