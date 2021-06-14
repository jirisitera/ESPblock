#destroy middle block if middle wire is missing
execute as @e[tag=ESPblock_on] at @s unless block ~ ~ ~ redstone_wire run setblock ~ ~ ~ air
execute as @e[tag=ESPblock_off] at @s unless block ~ ~ ~ redstone_wire run setblock ~ ~ ~ air

#make sure y=0 is bedrock and the block under is correct
execute as @e[tag=ESPblock_on,tag=!receiver] at @s if block ~ ~ ~ minecraft:air run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
execute as @e[tag=ESPblock_on,tag=!receiver] at @s if block ~ ~ ~ minecraft:air run setblock ~ 0 ~ minecraft:bedrock
execute as @e[tag=ESPblock_off,tag=!receiver] at @s if block ~ ~ ~ minecraft:air run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
execute as @e[tag=ESPblock_off,tag=!receiver] at @s if block ~ ~ ~ minecraft:air run setblock ~ 0 ~ minecraft:bedrock

#make sure y=0 is bedrock and the block under is correct for reciever
execute as @e[tag=receiver] at @s if block ~ ~ ~ minecraft:air run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
execute as @e[tag=receiver] at @s if block ~ ~ ~ minecraft:air run setblock ~ 0 ~ minecraft:bedrock

#kill displayer armorstands
execute as @e[tag=display1] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=display1]
execute as @e[tag=display2] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=display2]
execute as @e[tag=display3] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=display3]
execute as @e[tag=display4] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=display4]
execute as @e[tag=display5] at @s if block ~ ~-1 ~ minecraft:air run kill @s[tag=display5]
execute as @e[tag=display6] at @s if block ~ ~-1 ~ minecraft:air run kill @s[tag=display6]
execute as @e[tag=display7] at @s if block ~ ~-1 ~ minecraft:air run kill @s[tag=display7]
execute as @e[tag=display8] at @s if block ~ ~-1 ~ minecraft:air run kill @s[tag=display8]

execute as @e[tag=display1] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display1]
execute as @e[tag=display2] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display2]
execute as @e[tag=display3] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display3]
execute as @e[tag=display4] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display4]
execute as @e[tag=display5] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display5]
execute as @e[tag=display6] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display6]
execute as @e[tag=display7] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display7]
execute as @e[tag=display8] at @s if entity @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]},distance=..2] run kill @s[tag=display8]

#destroy all armor stands
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_on]
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_off]
