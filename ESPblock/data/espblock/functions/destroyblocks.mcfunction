#destroy middle block if surrounding wires are missing

execute as @e[tag=ESPblock_on] at @s unless block ~1 ~ ~ redstone_wire run setblock ~ ~ ~ air
execute as @e[tag=ESPblock_off] at @s unless block ~1 ~ ~ redstone_wire run setblock ~ ~ ~ air

execute as @e[tag=ESPblock_on] at @s unless block ~-1 ~ ~ redstone_wire run setblock ~ ~ ~ air
execute as @e[tag=ESPblock_off] at @s unless block ~-1 ~ ~ redstone_wire run setblock ~ ~ ~ air

execute as @e[tag=ESPblock_on] at @s unless block ~ ~ ~1 redstone_wire run setblock ~ ~ ~ air
execute as @e[tag=ESPblock_off] at @s unless block ~ ~ ~1 redstone_wire run setblock ~ ~ ~ air

execute as @e[tag=ESPblock_on] at @s unless block ~ ~ ~-1 redstone_wire run setblock ~ ~ ~ air
execute as @e[tag=ESPblock_off] at @s unless block ~ ~ ~-1 redstone_wire run setblock ~ ~ ~ air

#destroy all surrounding redstone
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run setblock ~1 ~ ~ air
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run setblock ~1 ~ ~ air

execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run setblock ~-1 ~ ~ air
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run setblock ~-1 ~ ~ air

execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~1 air
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~1 air

execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~-1 air
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~-1 air
#make sure y=0 is bedrock and the block under is correct

execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run setblock ~ 0 ~ minecraft:bedrock
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run clone ~ 0 ~ ~ 0 ~ ~ ~-1 ~
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run setblock ~ 0 ~ minecraft:bedrock

#destroy all surrounding armor stands
execute as @e[tag=ESPblock_east] at @s if block ~-1 ~ ~ minecraft:air run kill @s[tag=ESPblock_east]
execute as @e[tag=ESPblock_west] at @s if block ~1 ~ ~ minecraft:air run kill @s[tag=ESPblock_west]
execute as @e[tag=ESPblock_north] at @s if block ~ ~ ~1 minecraft:air run kill @s[tag=ESPblock_north]
execute as @e[tag=ESPblock_south] at @s if block ~ ~ ~-1 minecraft:air run kill @s[tag=ESPblock_south]

#destroy all armor stands
execute as @e[tag=ESPblock_on] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_on]
execute as @e[tag=ESPblock_off] at @s if block ~ ~ ~ minecraft:air run kill @s[tag=ESPblock_off]
