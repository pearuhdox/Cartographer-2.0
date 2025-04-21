execute store result score $slot ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].Slot

execute if score $slot ca.ench_scavenger_slot matches -106..8 store result storage cartographer_custom_enchantments:scavenger macro.slot int 1 run scoreboard players get $slot ca.ench_scavenger_slot
execute store result score $kills_current ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:use_remainder.components.minecraft:custom_data.scavenger_tracker
execute store result score $kills_current_2 ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_tracker
scoreboard players operation $kills_current ca.ench_scavenger_slot += $kills_current_2 ca.ench_scavenger_slot

execute store result score $repeating ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
execute store result score $use_count ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.use_count

execute unless score $repeating ca.ench_scavenger_slot matches 1.. if score $slot ca.ench_scavenger_slot matches -106..8 if data storage cartographer_custom_enchantments:scavenger item_check{id:"minecraft:firework_star"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/start
execute if score $repeating ca.ench_scavenger_slot matches 1.. unless score $use_count ca.ench_scavenger_slot >= $repeating ca.ench_scavenger_slot if score $slot ca.ench_scavenger_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/start


execute unless score $repeating ca.ench_scavenger_slot matches 1.. if score $kills_current ca.ench_scavenger_slot matches 1.. if score $slot ca.ench_scavenger_slot matches -106..8 if data storage cartographer_custom_enchantments:scavenger item_check{id:"minecraft:firework_star"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/reset
execute if score $repeating ca.ench_scavenger_slot matches 1.. if score $use_count ca.ench_scavenger_slot >= $repeating ca.ench_scavenger_slot if score $time_current ca.ench_scavenger_slot matches 1.. if score $slot ca.ench_scavenger_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/reset
