execute store result score $kills_max ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:use_remainder.components.minecraft:custom_data.scavenger_kills
execute if score $kills_max ca.ench_scavenger_slot matches 0 run scoreboard players set $kills_max ca.ench_scavenger_slot 1

scoreboard players add $kills_current ca.ench_scavenger_slot 1
execute if score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/refill/start

#Setup Visual
#execute unless score $repeating ca.ench_scavenger_slot matches 1.. run data modify storage cartographer_custom_enchantments:scavenger visual.name set value {"fallback":"Crossbow","translate":"item.minecraft.crossbow","color":"aqua","italic":false}
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. unless data storage cartographer_custom_enchantments:scavenger data.item.components.minecraft:custom_data.scavenger_name if data storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:scavenger visual.name set from storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_name
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. unless data storage cartographer_custom_enchantments:scavenger data.item.components.minecraft:custom_data.scavenger_name if data storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:scavenger visual.name set from storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:item_name

execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. if data storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_name run data modify storage cartographer_custom_enchantments:scavenger visual.name set from storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_name
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. unless data storage cartographer_custom_enchantments:scavenger data.item.components.minecraft:custom_data.scavenger_name run data modify storage cartographer_custom_enchantments:scavenger data.item.components.minecraft:custom_data.scavenger_name set from storage cartographer_custom_enchantments:scavenger visual.name

execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. store result score $kills_red ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:use_remainder.components.minecraft:custom_data.scavenger_tracker
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. run scoreboard players operation $kills_left ca.ench_scavenger_slot = $kills_max ca.ench_scavenger_slot
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. run scoreboard players operation $kills_left ca.ench_scavenger_slot -= $kills_red ca.ench_scavenger_slot
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. run scoreboard players remove $kills_left ca.ench_scavenger_slot 1
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. store result storage cartographer_custom_enchantments:scavenger visual.time int 1 run scoreboard players get $kills_left ca.ench_scavenger_slot

execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/visual/get_name
execute unless score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot unless score $repeating ca.ench_scavenger_slot matches 1.. run data modify storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:scavenger visual.return

#Reset Kill Count Here
execute if score $kills_current ca.ench_scavenger_slot >= $kills_max ca.ench_scavenger_slot run scoreboard players set $kills_current ca.ench_scavenger_slot 0
execute store result storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:use_remainder.components.minecraft:custom_data.scavenger_tracker int 1 run scoreboard players get $kills_current ca.ench_scavenger_slot

data modify storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_tracker set value 0

data modify storage test:test item set value {}
data modify storage test:test item set from storage cartographer_custom_enchantments:scavenger items[0]


execute if score $slot ca.ench_scavenger_slot matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/return_offhand
execute if score $slot ca.ench_scavenger_slot matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/return with storage cartographer_custom_enchantments:scavenger macro