
$execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.$(slot).components.minecraft:enchantments.cartographer_custom_enchantments:$(enchantment)
$execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_$(enchantment)_lvl += $temp ca.ench_var