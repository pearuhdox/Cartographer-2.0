scoreboard players set $time_current ca.ench_auto_charge_slot 0
execute store result storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_tracker int 1 run scoreboard players get $time_current ca.ench_auto_charge_slot

execute if score $slot ca.ench_auto_charge_slot matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/return_offhand
execute if score $slot ca.ench_auto_charge_slot matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/return with storage cartographer_custom_enchantments:auto_charge macro