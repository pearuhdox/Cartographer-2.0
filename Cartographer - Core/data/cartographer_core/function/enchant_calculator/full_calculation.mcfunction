
scoreboard players set $weapon ca.calc_type 0
scoreboard players set $passive ca.calc_type 0
scoreboard players set $ranged ca.calc_type 0
scoreboard players set $tool ca.calc_type 0
scoreboard players set $slot ca.calc_type 0

scoreboard players set $was_main ca.calc_type 0
scoreboard players set $was_offh ca.calc_type 0

scoreboard players set $was_feet ca.calc_type 0
scoreboard players set $was_legs ca.calc_type 0
scoreboard players set $was_body ca.calc_type 0
scoreboard players set $was_head ca.calc_type 0


$scoreboard players set $$(type) ca.calc_type 1

data modify storage cartographer:enchantment_data equipped set value {}

execute unless entity @s[type=player] run function cartographer_core:enchant_calculator/mob_calc

$scoreboard players set @s ca.ench_$(enchantment)_lvl 0

$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"feet"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"legs"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"head"}

$execute if entity @s[type=wolf] run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body_armor"}
$execute if entity @s[type=horse] run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body_armor"}
$execute if entity @s[type=zombie_horse] run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body_armor"}
$execute if entity @s[type=skeleton_horse] run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body_armor"}

execute unless predicate cartographer_core:holding/ranged/mainhand

$execute if score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/ranged/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"offh"}
$execute unless score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/armor/offhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"offh"}

$execute unless predicate cartographer_core:holding/armor/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"main"}
