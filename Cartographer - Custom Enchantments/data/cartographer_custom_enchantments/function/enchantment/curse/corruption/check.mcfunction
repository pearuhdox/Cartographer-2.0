tag @s remove ca.corruption_head_lock
tag @s remove ca.corruption_head_disable
tag @s remove ca.corruption_chest_lock
tag @s remove ca.corruption_chest_disable
tag @s remove ca.corruption_legs_lock
tag @s remove ca.corruption_legs_disable
tag @s remove ca.corruption_feet_lock
tag @s remove ca.corruption_feet_disable
tag @s remove ca.corruption_main_lock
tag @s remove ca.corruption_main_disable
tag @s remove ca.corruption_offh_lock
tag @s remove ca.corruption_offh_disable

function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"corruption",type:"slot"}

execute if score @s ca.ench_corruption_head_lvl matches 1 run tag @s add ca.corruption_head_lock
execute if score @s ca.ench_corruption_head_lvl matches 2.. run tag @s add ca.corruption_head_disable
execute if score @s ca.ench_corruption_chest_lvl matches 1 run tag @s add ca.corruption_chest_lock
execute if score @s ca.ench_corruption_chest_lvl matches 2.. run tag @s add ca.corruption_chest_disable
execute if score @s ca.ench_corruption_legs_lvl matches 1 run tag @s add ca.corruption_legs_lock
execute if score @s ca.ench_corruption_legs_lvl matches 2.. run tag @s add ca.corruption_legs_disable
execute if score @s ca.ench_corruption_feet_lvl matches 1 run tag @s add ca.corruption_feet_lock
execute if score @s ca.ench_corruption_feet_lvl matches 2.. run tag @s add ca.corruption_feet_disable
execute if score @s ca.ench_corruption_main_lvl matches 1 run tag @s add ca.corruption_main_lock
execute if score @s ca.ench_corruption_main_lvl matches 2.. run tag @s add ca.corruption_main_disable
execute if score @s ca.ench_corruption_offh_lvl matches 1 run tag @s add ca.corruption_offh_lock
execute if score @s ca.ench_corruption_offh_lvl matches 2.. run tag @s add ca.corruption_offh_disable

function cartographer_custom_enchantments:enchantment/curse/corruption/debuff_count

execute if score $debuff_count ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/curse/corruption/activate
execute unless score $debuff_count ca.ench_var matches 1.. run function cartographer_custom_enchantments:enchantment/curse/corruption/deactivate