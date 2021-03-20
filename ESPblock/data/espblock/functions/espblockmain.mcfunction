#y=0 cleanup
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ ~ 0 ~

#spawn redstone wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~ ~ ~ minecraft:redstone_wire

#spawn ESPblock timer functionality
scoreboard players add @e[tag=ESPblock_timer] spawnespblock 1

#spawn ESPblock
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"ESPblock"}',CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_off"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:2}}]}

#tagoverflow
execute as @e[tag=transmitter,tag=receiver] run tag @s add tagoverflow
execute as @e[tag=tagoverflow] run tag @s remove transmitter
execute as @e[tag=tagoverflow] run tag @s remove receiver
execute as @e[tag=tagoverflow] run data merge entity @s {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:2}}]}
execute as @e[tag=tagoverflow] run tag @s remove tagoverflow

#spawn target block under receiver
execute as @e[tag=receiver] at @s unless block ~ ~-1 ~ target run setblock ~ ~-1 ~ target