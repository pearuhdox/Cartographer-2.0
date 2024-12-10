

$execute if score $tool_type ca.ench_multitool_lvl matches 1 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(speed),blocks:"minecraft:cobweb"}
$execute if score $tool_type ca.ench_multitool_lvl matches 2 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(speed),blocks:"#mineable/axe"}
$execute if score $tool_type ca.ench_multitool_lvl matches 3 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(speed),blocks:"#mineable/pickaxe"}
$execute if score $tool_type ca.ench_multitool_lvl matches 4 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(speed),blocks:"#mineable/shovel"}
$execute if score $tool_type ca.ench_multitool_lvl matches 5 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(speed),blocks:"#mineable/hoe"}

$execute unless score $tool_type ca.ench_multitool_lvl matches 1 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(reduced_speed),blocks:"minecraft:cobweb"}
$execute unless score $tool_type ca.ench_multitool_lvl matches 2 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(reduced_speed),blocks:"#mineable/axe"}
$execute unless score $tool_type ca.ench_multitool_lvl matches 3 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(reduced_speed),blocks:"#mineable/pickaxe"}
$execute unless score $tool_type ca.ench_multitool_lvl matches 4 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(reduced_speed),blocks:"#mineable/shovel"}
$execute unless score $tool_type ca.ench_multitool_lvl matches 5 run data modify storage cartographer:custom_enchantments multitool_data.rules append value {correct_for_drops:true,speed:$(reduced_speed),blocks:"#mineable/hoe"}

data modify storage cartographer:custom_enchantments multitool_item.components.minecraft:tool set from storage cartographer:custom_enchantments multitool_data

data modify storage cartographer:custom_enchantments multitool_item.components.minecraft:custom_data.multitool_applied set value 1b

data modify storage cartographer:custom_enchantments multitool_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments multitool_item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]