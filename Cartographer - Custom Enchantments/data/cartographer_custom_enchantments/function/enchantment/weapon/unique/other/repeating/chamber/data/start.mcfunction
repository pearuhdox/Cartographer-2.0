data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles append from storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]

execute store result score $multishot_lvl ca.ench_repeating_lvl run data get storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:enchantments.levels.minecraft:multishot
execute if score $multishot_lvl ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/data/multishot

data remove storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]

