execute store result score $time_max ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:use_remainder.components.minecraft:custom_data.auto_charge_seconds
execute if score $time_max ca.ench_auto_charge_slot matches 0 run scoreboard players set $time_max ca.ench_auto_charge_slot 10

scoreboard players add $time_current ca.ench_auto_charge_slot 1
execute if score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/refill/start

#Setup Visual - Only While Recharging
#execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run data modify storage cartographer_custom_enchantments:auto_charge visual.name set value {"fallback":"Crossbow","translate":"item.minecraft.crossbow","color":"aqua","italic":false}
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. unless data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:auto_charge visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:item_name
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. unless data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:auto_charge visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name

execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name run data modify storage cartographer_custom_enchantments:auto_charge visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. unless data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name run data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_name set from storage cartographer_custom_enchantments:auto_charge visual.name

execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. store result score $time_red ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:use_remainder.components.minecraft:custom_data.auto_charge_tracker
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run scoreboard players operation $time_left ca.ench_auto_charge_slot = $time_max ca.ench_auto_charge_slot
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run scoreboard players operation $time_left ca.ench_auto_charge_slot -= $time_red ca.ench_auto_charge_slot
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run scoreboard players remove $time_left ca.ench_auto_charge_slot 1
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. store result storage cartographer_custom_enchantments:auto_charge visual.time int 1 run scoreboard players get $time_left ca.ench_auto_charge_slot

execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/visual/get_name
execute unless score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot unless score $repeating ca.ench_auto_charge_slot matches 1.. run data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:auto_charge visual.return

#Reset Time Current
execute if score $time_current ca.ench_auto_charge_slot >= $time_max ca.ench_auto_charge_slot run scoreboard players set $time_current ca.ench_auto_charge_slot 0
execute store result storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:use_remainder.components.minecraft:custom_data.auto_charge_tracker int 1 run scoreboard players get $time_current ca.ench_auto_charge_slot

data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_tracker set value 0


execute if score $slot ca.ench_auto_charge_slot matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/return_offhand
execute if score $slot ca.ench_auto_charge_slot matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/return with storage cartographer_custom_enchantments:auto_charge macro