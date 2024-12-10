scoreboard players set $kills_current ca.ench_scavenger_slot 0
execute store result storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_tracker int 1 run scoreboard players get $kills_current ca.ench_scavenger_slot

execute if score $slot ca.ench_scavenger_slot matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/crossbow/activate/return_offhand
execute if score $slot ca.ench_scavenger_slot matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/crossbow/activate/return with storage cartographer_custom_enchantments:scavenger macro