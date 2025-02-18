data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles append from storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]
data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles[-1].components.minecraft:intangible_projectile set value {}

data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles append from storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0]
data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:charged_projectiles[-1].components.minecraft:intangible_projectile set value {}


scoreboard players remove $multishot_lvl ca.ench_repeating_lvl 1

execute if score $multishot_lvl ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/data/multishot