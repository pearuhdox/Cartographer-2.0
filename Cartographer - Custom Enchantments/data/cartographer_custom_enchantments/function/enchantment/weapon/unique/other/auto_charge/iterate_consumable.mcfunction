execute store result score $slot ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].Slot

execute if score $slot ca.ench_auto_charge_slot matches -106..8 store result storage cartographer_custom_enchantments:auto_charge macro.slot int 1 run scoreboard players get $slot ca.ench_auto_charge_slot
execute store result score $time_current ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:use_remainder.components.minecraft:custom_data.auto_charge_tracker
execute store result score $time_current_2 ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_tracker
scoreboard players operation $time_current ca.ench_auto_charge_slot += $time_current_2 ca.ench_auto_charge_slot

execute store result score $repeating ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
execute store result score $use_count ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.use_count

execute unless score $repeating ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 if data storage cartographer_custom_enchantments:auto_charge item_check{id:"minecraft:firework_star"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/start
execute if score $repeating ca.ench_auto_charge_slot matches 1.. unless score $use_count ca.ench_auto_charge_slot >= $repeating ca.ench_auto_charge_slot if score $slot ca.ench_auto_charge_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/start


execute unless score $repeating ca.ench_auto_charge_slot matches 1.. if score $time_current ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 if data storage cartographer_custom_enchantments:auto_charge item_check{id:"minecraft:firework_star"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/reset
execute if score $repeating ca.ench_auto_charge_slot matches 1.. if score $use_count ca.ench_auto_charge_slot >= $repeating ca.ench_auto_charge_slot if score $time_current ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/reset
