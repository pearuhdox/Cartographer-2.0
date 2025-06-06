scoreboard players set $weapon ca.calc_type 0
scoreboard players set $passive ca.calc_type 0
scoreboard players set $ranged ca.calc_type 0
scoreboard players set $tool ca.calc_type 0
scoreboard players set $slot ca.calc_type 0


scoreboard players set $was_main ca.calc_type 0
scoreboard players set $was_offh ca.calc_type 0

scoreboard players set $was_feet ca.calc_type 0
scoreboard players set $was_legs ca.calc_type 0
scoreboard players set $was_chest ca.calc_type 0
scoreboard players set $was_head ca.calc_type 0

scoreboard players set $was_body ca.calc_type 0
scoreboard players set $was_saddle ca.calc_type 0

$scoreboard players set $$(type) ca.calc_type 1

data modify storage cartographer:enchantment_data equipped set value {}

function cartographer_core:enchant_calculator/mob_calc

$scoreboard players set @s ca.ench_$(enchantment)_lvl 0

$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"feet",full_slot:"feet"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"legs",full_slot:"legs"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"chest",full_slot:"chest"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"head",full_slot:"head"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"body",full_slot:"body"}
$execute unless score $tool ca.calc_type matches 1.. unless score $weapon ca.calc_type matches 1.. unless score $ranged ca.calc_type matches 1.. run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"saddle",full_slot:"saddle"}

$execute if score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/ranged/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"offh",full_slot:"offhand"}
$execute unless score $ranged ca.calc_type matches 1.. unless predicate cartographer_core:holding/armor/offhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"offh",full_slot:"offhand"}

$execute unless predicate cartographer_core:holding/armor/mainhand run function cartographer_core:enchant_calculator/calculate_item {namespace:"$(namespace)",category:"$(category)",enchantment:"$(enchantment)",slot:"main",full_slot:"mainhand"}


$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_head_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_chest_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_legs_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_feet_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_body_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_saddle_lvl

$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_main_lvl
$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_offh_lvl

$scoreboard players operation @s ca.ench_$(enchantment)_lvl += @s ca.ench_$(enchantment)_bonus_lvl
