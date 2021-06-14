#y=0 cleanup
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run clone ~ ~-1 ~ ~ ~-1 ~ ~ 0 ~

#spawn redstone wire
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run setblock ~ ~ ~ minecraft:redstone_wire[east=side,north=side,west=side,south=side]

#spawn ESPblock timer functionality
scoreboard players add @e[tag=ESPblock_timer] spawnespblock 1

#spawn ESPblock
execute as @e[tag=spawn_espblock,nbt={Age:0}] at @s run summon armor_stand ~ ~ ~ {CustomName:'{"text":"ESPblock"}',CustomNameVisible:1b,NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ESPblock_off"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:2}}]}

#spawn target block under receiver
execute as @e[tag=receiver] at @s unless block ~ ~-1 ~ target run setblock ~ ~-1 ~ target

#give tag to receiver
execute as @e[tag=!receiver,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:cyan_dye"}},distance=..1] run function espblock:receiver
#give tag to transmitter
execute as @e[tag=!transmitter,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:yellow_dye"}},distance=..1] run function espblock:transmitter
#give tag to displayer
execute as @e[tag=!displayer,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:purple_dye"}},distance=..1] run function espblock:displayer
#give tag to tester
execute as @e[tag=!tester,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b}]}] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:lime_dye"}},distance=..1] run function espblock:tester

#manage Displayer ESPblocks
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display1,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display2,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display3,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display4,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display5,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display6,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display7,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_on,tag=displayer] at @s run data merge entity @e[tag=display8,sort=nearest,limit=1] {CustomNameVisible:1b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display1,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display2,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display3,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display4,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display5,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display6,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display7,sort=nearest,limit=1] {CustomNameVisible:0b}
execute as @e[tag=ESPblock_off,tag=displayer] at @s run data merge entity @e[tag=display8,sort=nearest,limit=1] {CustomNameVisible:0b}

#User Manual Book
execute as @e[nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:written_book",Count:1b,tag:{pages:['["",{"text":"ESPblock User Manual\\n"},{"text":"Version 1.3.7","italic":true},{"text":"\\n\\nHello ","color":"reset"},{"selector":"@p","color":"dark_red"},{"text":"! Welcome to the ESPblock User Manual. This handbook will teach you all about the newest version of ESPblock. From how to create one to how to set it up. Let\'s begin!","color":"reset"}]','{"text":"First, you need to learn the basics. If you somewhat know how to play Minecraft itself, skip to page 4. For everyone else, let\'s talk about keybinds. Firstly, on page 3 are some basic keybinds. You can use these to get your player to do different actions."}','["",{"text":"Here are a few keybinds for useful commands:\\n"},{"keybind":"key.inventory","color":"dark_red"},{"text":" - Open Inventory\\n","color":"reset"},{"keybind":"key.attack","color":"dark_red"},{"text":" - Break Block\\n","color":"reset"},{"keybind":"key.use","color":"dark_red"},{"text":" - Place Block\\n","color":"reset"},{"keybind":"key.chat","color":"dark_red"},{"text":" - Open Chat\\n","color":"reset"},{"keybind":"key.command","color":"dark_red"},{"text":" - Open Command\\n","color":"reset"},{"keybind":"key.screenshot","color":"dark_red"},{"text":" - Take Screenshot\\n","color":"reset"},{"keybind":"key.playerlist","color":"dark_red"},{"text":" - List Players\\nAnd that\'s it! Now back to ESPblocks.","color":"reset"}]','{"text":"Alright, so now let\'s talk about ESPblocks. The first thing you need to know is how to make yourself an ESPblock. First, you need to get a few materials. You will need: 3 stone slabs, 2 redstone torches, 1 redstone dust and 1 repeater. Then you need to throw all"}','{"text":"that on the ground. Make sure to step a bit further away to ensure that you don\'t pick anything back up. Once everything is on the ground, the ESPblock spawn egg should be created. You can use the spawn egg on the ground to place down your very own ESPblock."}','{"text":"Now then, let\'s set it up."}'],title:"ESPblock™ User Manual",author:Nvias}}}
execute as @e[nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run particle minecraft:end_rod ~ ~ ~ 0.0001 0.0001 0.0001 0.1 50 normal
execute as @e[nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if entity @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1] run kill @e[nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..1]
execute as @e[nbt={Item:{id:"minecraft:book",Count:1b}}] at @s if entity @e[nbt={Item:{id:"minecraft:written_book",Count:1b}},distance=..1] run kill @s