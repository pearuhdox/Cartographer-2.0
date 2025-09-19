data modify storage cartographer:ender_pouch bag set value [] 
data modify storage cartographer:ender_pouch bag set from entity @s Inventory[{id:"minecraft:black_bundle",components:{"minecraft:custom_data":{ender_pouch:1b}}}]

execute if data entity @s equipment.offhand.components.minecraft:custom_data.ender_pouch run data modify storage cartographer:ender_pouch bag append from entity @s equipment.offhand
execute if data entity @s equipment.offhand.components.minecraft:custom_data.ender_pouch run data modify storage cartographer:ender_pouch bag[-1].Slot set value -106b

data modify storage cartographer:ender_pouch player set value "-"
data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:ender_pouch player set from storage gu:main out

scoreboard players set $pocket_success ca.pouch_var 0
scoreboard players set $pocket_block ca.pouch_var 0

execute if data storage cartographer:ender_pouch bag.components."minecraft:bundle_contents"[0] run function cartographer_ender_pouch:ender/start_iterate with storage cartographer:ender_pouch
execute if data storage cartographer:ender_pouch bag.components."minecraft:bundle_contents"[0] run function cartographer_ender_pouch:ender/iterate

execute if score $pocket_success ca.pouch_var matches 1.. run playsound minecraft:block.ender_chest.close player @s ~ ~ ~ 0.35 1.75
execute if score $pocket_success ca.pouch_var matches 1.. run playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 0.75 1

execute if score $pocket_block ca.pouch_var matches 1.. run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75

tag @s remove ca.has_ender_pouch

execute store result score $slot ca.pouch_var run data get storage cartographer:ender_pouch bag.Slot

data modify storage cartographer:ender_pouch bag.Slot set value 0b

data modify block 4206905 5 4206905 Items set value []
data modify block 4206905 5 4206905 Items append from storage cartographer:ender_pouch bag
data modify block 4206905 5 4206905 Items[0].components.minecraft:bundle_contents set value []


execute if score $slot ca.pouch_var matches 0 run loot replace entity @s hotbar.0 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 1 run loot replace entity @s hotbar.1 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 2 run loot replace entity @s hotbar.2 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 3 run loot replace entity @s hotbar.3 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 4 run loot replace entity @s hotbar.4 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 5 run loot replace entity @s hotbar.5 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 6 run loot replace entity @s hotbar.6 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 7 run loot replace entity @s hotbar.7 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 8 run loot replace entity @s hotbar.8 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if score $slot ca.pouch_var matches 9 run loot replace entity @s inventory.0 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 10 run loot replace entity @s inventory.1 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 11 run loot replace entity @s inventory.2 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 12 run loot replace entity @s inventory.3 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 13 run loot replace entity @s inventory.4 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 14 run loot replace entity @s inventory.5 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 15 run loot replace entity @s inventory.6 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 16 run loot replace entity @s inventory.7 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 17 run loot replace entity @s inventory.8 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if score $slot ca.pouch_var matches 18 run loot replace entity @s inventory.9 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 19 run loot replace entity @s inventory.10 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 20 run loot replace entity @s inventory.11 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 21 run loot replace entity @s inventory.12 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 22 run loot replace entity @s inventory.13 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 23 run loot replace entity @s inventory.14 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 24 run loot replace entity @s inventory.15 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 25 run loot replace entity @s inventory.16 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 26 run loot replace entity @s inventory.17 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if score $slot ca.pouch_var matches 27 run loot replace entity @s inventory.18 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 28 run loot replace entity @s inventory.19 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 29 run loot replace entity @s inventory.20 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 30 run loot replace entity @s inventory.21 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 31 run loot replace entity @s inventory.22 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 32 run loot replace entity @s inventory.23 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 33 run loot replace entity @s inventory.24 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 34 run loot replace entity @s inventory.25 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]
execute if score $slot ca.pouch_var matches 35 run loot replace entity @s inventory.26 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if score $slot ca.pouch_var matches -106 run loot replace entity @s weapon.offhand 1 mine 4206905 5 4206905 debug_stick[minecraft:custom_data={drop_contents:1b}]