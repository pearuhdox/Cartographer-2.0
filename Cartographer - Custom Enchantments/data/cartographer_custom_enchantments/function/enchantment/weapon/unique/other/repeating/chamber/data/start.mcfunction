data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles append from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]

execute store result score $multishot_lvl ca.ench_repeating_lvl run data get storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:enchantments.minecraft:multishot
execute store result score $infinity_lvl ca.ench_repeating_lvl run data get storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:enchantments.minecraft:infinity

execute if score $infinity_lvl ca.ench_repeating_lvl matches 1.. run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles[-1].components.minecraft:intangible_projectile set value {}

#execute if score $multishot_lvl ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/data/multishot

data remove storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]

