#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"gluttony",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"gluttony",type:"passive"}

execute if entity @s[tag=ca.used_gluttony] run function cartographer_custom_enchantments:enchantment/curse/gluttony/activate

tag @s remove ca.used_gluttony
tag @s remove ca.used_gluttony_main
tag @s remove ca.used_gluttony_offh
tag @s remove ca.used_gluttony_feet
tag @s remove ca.used_gluttony_legs
tag @s remove ca.used_gluttony_chest
tag @s remove ca.used_gluttony_head