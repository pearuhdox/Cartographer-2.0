scoreboard players set $count ca.ench_pride_lvl 0

tag @s remove ca.pride_head_lock
tag @s remove ca.pride_head_disable
tag @s remove ca.pride_body_lock
tag @s remove ca.pride_body_disable
tag @s remove ca.pride_legs_lock
tag @s remove ca.pride_legs_disable
tag @s remove ca.pride_feet_lock
tag @s remove ca.pride_feet_disable
tag @s remove ca.pride_main_lock
tag @s remove ca.pride_main_disable
tag @s remove ca.pride_offh_lock
tag @s remove ca.pride_offh_disable

execute unless entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"pride",type:"slot"}

execute if score @s ca.ench_pride_head_lvl matches 1 run tag @s add ca.pride_head_lock
execute if score @s ca.ench_pride_head_lvl matches 2.. run tag @s add ca.pride_head_disable
execute if score @s ca.ench_pride_head_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score @s ca.ench_pride_chest_lvl matches 1 run tag @s add ca.pride_body_lock
execute if score @s ca.ench_pride_chest_lvl matches 2.. run tag @s add ca.pride_body_disable
execute if score @s ca.ench_pride_chest_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score @s ca.ench_pride_legs_lvl matches 1 run tag @s add ca.pride_legs_lock
execute if score @s ca.ench_pride_legs_lvl matches 2.. run tag @s add ca.pride_legs_disable
execute if score @s ca.ench_pride_legs_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score @s ca.ench_pride_feet_lvl matches 1 run tag @s add ca.pride_feet_lock
execute if score @s ca.ench_pride_feet_lvl matches 2.. run tag @s add ca.pride_feet_disable
execute if score @s ca.ench_pride_feet_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score @s ca.ench_pride_main_lvl matches 1 run tag @s add ca.pride_main_lock
execute if score @s ca.ench_pride_main_lvl matches 2.. run tag @s add ca.pride_main_disable
execute if score @s ca.ench_pride_main_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score @s ca.ench_pride_offh_lvl matches 1 run tag @s add ca.pride_offh_lock
execute if score @s ca.ench_pride_offh_lvl matches 2.. run tag @s add ca.pride_offh_disable
execute if score @s ca.ench_pride_offh_lvl matches 1.. run scoreboard players add $count ca.ench_pride_lvl 1

execute if score $count ca.ench_pride_lvl matches 2.. run function cartographer_custom_enchantments:enchantment/curse/pride/activate
execute unless score $count ca.ench_pride_lvl matches 2.. run function cartographer_custom_enchantments:enchantment/curse/pride/deactivate

scoreboard players set @s ca.ench_pride_check 0