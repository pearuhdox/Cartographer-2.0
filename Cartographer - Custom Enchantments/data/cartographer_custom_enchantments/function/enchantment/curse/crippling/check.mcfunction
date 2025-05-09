tag @s remove ca.crippling_head_lock
tag @s remove ca.crippling_head_disable
tag @s remove ca.crippling_chest_lock
tag @s remove ca.crippling_chest_disable
tag @s remove ca.crippling_legs_lock
tag @s remove ca.crippling_legs_disable
tag @s remove ca.crippling_feet_lock
tag @s remove ca.crippling_feet_disable
tag @s remove ca.crippling_main_lock
tag @s remove ca.crippling_main_disable
tag @s remove ca.crippling_offh_lock
tag @s remove ca.crippling_offh_disable

function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"crippling",type:"slot"}

execute if score @s ca.ench_crippling_head_lvl matches 1 run tag @s add ca.crippling_head_lock
execute if score @s ca.ench_crippling_head_lvl matches 2.. run tag @s add ca.crippling_head_disable
execute if score @s ca.ench_crippling_chest_lvl matches 1 run tag @s add ca.crippling_chest_lock
execute if score @s ca.ench_crippling_chest_lvl matches 2.. run tag @s add ca.crippling_chest_disable
execute if score @s ca.ench_crippling_legs_lvl matches 1 run tag @s add ca.crippling_legs_lock
execute if score @s ca.ench_crippling_legs_lvl matches 2.. run tag @s add ca.crippling_legs_disable
execute if score @s ca.ench_crippling_feet_lvl matches 1 run tag @s add ca.crippling_feet_lock
execute if score @s ca.ench_crippling_feet_lvl matches 2.. run tag @s add ca.crippling_feet_disable
execute if score @s ca.ench_crippling_main_lvl matches 1 run tag @s add ca.crippling_main_lock
execute if score @s ca.ench_crippling_main_lvl matches 2.. run tag @s add ca.crippling_main_disable
execute if score @s ca.ench_crippling_offh_lvl matches 1 run tag @s add ca.crippling_offh_lock
execute if score @s ca.ench_crippling_offh_lvl matches 2.. run tag @s add ca.crippling_offh_disable

execute if score @s ca.crippling_time matches 1.. run function cartographer_custom_enchantments:enchantment/curse/crippling/activate
execute unless score @s ca.crippling_time matches 1.. run function cartographer_custom_enchantments:enchantment/curse/crippling/deactivate

execute if score @s ca.crippling_time matches 1.. run scoreboard players remove @s ca.crippling_time 1