scoreboard players set $weapon ca.calc_type 0
scoreboard players set $passive ca.calc_type 0
scoreboard players set $ranged ca.calc_type 0

$scoreboard players set $(type) ca.calc_type 1

data modify storage cartographer:enchantment_data equipped set value {}
data modify storage cartographer:enchantment_data equipped.main set from entity @s SelectedItem

$scoreboard players set @s ca.ench_$(enchantment)_main_lvl 0

$execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.main.components.minecraft:enchantments.$(namespace):$(category)$(enchantment)
$execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_$(enchantment)_main_lvl += $temp ca.ench_var