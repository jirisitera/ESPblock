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

#destroy all armor stands
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_on]
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_off]
