#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}

#execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"regret",type:"passive"}


execute if entity @s[tag=ca.used_regret] run function cartographer_custom_enchantments:enchantment/curse/regret/activate

tag @s remove ca.used_regret
tag @s remove ca.used_regret_main
tag @s remove ca.used_regret_offh
tag @s remove ca.used_regret_feet
tag @s remove ca.used_regret_legs
tag @s remove ca.used_regret_chest
tag @s remove ca.used_regret_head