data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:charged_projectiles append from storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver[0]

execute store result score $multishot_lvl ca.ench_repeating_lvl run data get storage cartographer_custom_enchantments:repeating return_item.components.minecraft:enchantments.minecraft:multishot
execute store result score $infinity_lvl ca.ench_repeating_lvl run data get storage cartographer_custom_enchantments:repeating return_item.components.minecraft:enchantments.minecraft:infinity

execute if score $infinity_lvl ca.ench_repeating_lvl matches 1.. run data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:charged_projectiles[-1].components.minecraft:intangible_projectile set value {}

#execute if score $multishot_lvl ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/item/multishot

data remove storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver[0]
