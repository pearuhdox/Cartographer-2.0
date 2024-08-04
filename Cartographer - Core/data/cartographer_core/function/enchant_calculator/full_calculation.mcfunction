scoreboard players set $weapon ca.calc_type 0
scoreboard players set $passive ca.calc_type 0
scoreboard players set $ranged ca.calc_type 0

$scoreboard players set $(type) ca.calc_type 1


data modify storage cartographer:enchantment_data equipped set value {}

execute if entity @s[type=player] run function cartographer_core:enchant_calculator/player_calc
execute unless entity @s[type=player] run function cartographer_core:enchant_calculator/mob_calc

$scoreboard players set @s ca.ench_$(enchantment)_lvl 0

$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"feet"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"legs"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"body"}
$execute unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"head"}

$execute if score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/ranged/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"offh"}
$execute unless score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/armor/offhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"offh"}

$execute unless predicate cartographer_core:holding/armor/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",enchantment:"$(enchantment)",slot:"main"}
