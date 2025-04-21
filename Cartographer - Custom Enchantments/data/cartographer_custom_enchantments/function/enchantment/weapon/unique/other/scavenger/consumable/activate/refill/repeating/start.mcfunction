#cartographer_custom_enchantments:scavenger items[0]
execute store result score $current_use_count ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.use_count

execute store result score $allowed_use_count ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players add $allowed_use_count ca.ench_scavenger_slot 1


execute if score $current_use_count ca.ench_scavenger_slot < $allowed_use_count ca.ench_scavenger_slot run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/refill/repeating/do