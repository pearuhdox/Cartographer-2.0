#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"gluttony",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"gluttony",type:"passive"}

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"gluttony",type:"passive"}

execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_main_lvl = $was_main ca.calc_type
execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_offh_lvl = $was_offh ca.calc_type
execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_feet_lvl = $was_feet ca.calc_type
execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_legs_lvl = $was_legs ca.calc_type
execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_chest_lvl = $was_body ca.calc_type
execute unless entity @s[type=player] run scoreboard players operation @s ca.ench_gluttony_head_lvl = $was_head ca.calc_type


execute if entity @s[tag=ca.used_gluttony] run function cartographer_custom_enchantments:enchantment/curse/gluttony/activate

tag @s remove ca.used_gluttony
tag @s remove ca.used_gluttony_main
tag @s remove ca.used_gluttony_offh
tag @s remove ca.used_gluttony_feet
tag @s remove ca.used_gluttony_legs
tag @s remove ca.used_gluttony_body
tag @s remove ca.used_gluttony_head