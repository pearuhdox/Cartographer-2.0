#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}

scoreboard players operation @s ca.ench_main_regret_lvl = $was_main ca.calc_type
scoreboard players operation @s ca.ench_offh_regret_lvl = $was_offh ca.calc_type
scoreboard players operation @s ca.ench_feet_regret_lvl = $was_feet ca.calc_type
scoreboard players operation @s ca.ench_legs_regret_lvl = $was_legs ca.calc_type
scoreboard players operation @s ca.ench_body_regret_lvl = $was_body ca.calc_type
scoreboard players operation @s ca.ench_head_regret_lvl = $was_head ca.calc_type

execute if entity @s[tag=ca.used_regret] run function cartographer_custom_enchantments:enchantment/curse/regret/activate

tag @s remove ca.used_regret
tag @s remove ca.used_regret_main
tag @s remove ca.used_regret_offh
tag @s remove ca.used_regret_feet
tag @s remove ca.used_regret_legs
tag @s remove ca.used_regret_body
tag @s remove ca.used_regret_head