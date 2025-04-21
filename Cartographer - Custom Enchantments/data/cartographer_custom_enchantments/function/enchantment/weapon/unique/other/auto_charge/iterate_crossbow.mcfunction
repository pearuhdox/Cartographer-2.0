execute store result score $slot ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].Slot

execute if score $slot ca.ench_auto_charge_slot matches -106..8 store result storage cartographer_custom_enchantments:auto_charge macro.slot int 1 run scoreboard players get $slot ca.ench_auto_charge_slot
execute store result score $time_current ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_tracker

execute store result score $repeating ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
execute store result score $repeating_ammo ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_ammo
execute store result score $multishot ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:enchantments.minecraft:multishot

execute unless score $repeating ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 unless data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/start
execute if score $repeating ca.ench_auto_charge_slot matches 1.. unless score $repeating_ammo ca.ench_auto_charge_slot > $repeating ca.ench_auto_charge_slot if score $slot ca.ench_auto_charge_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/start


execute unless score $repeating ca.ench_auto_charge_slot matches 1.. if score $time_current ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/reset
execute if score $repeating ca.ench_auto_charge_slot matches 1.. if score $repeating_ammo ca.ench_auto_charge_slot > $repeating ca.ench_auto_charge_slot if score $time_current ca.ench_auto_charge_slot matches 1.. if score $slot ca.ench_auto_charge_slot matches -106..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/reset
