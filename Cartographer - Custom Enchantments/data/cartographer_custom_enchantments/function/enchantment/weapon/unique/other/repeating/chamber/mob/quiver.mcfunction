data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:charged_projectiles append from storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver[0]

data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating_mob_helper set value 1

execute store result score $multishot_lvl ca.ench_repeating_lvl run data get storage cartographer_custom_enchantments:repeating return_item.components.minecraft:enchantments.minecraft:multishot
#execute if score $multishot_lvl ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/multishot

data remove storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver[0]
