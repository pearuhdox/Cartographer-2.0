
#execute if entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"encumbering",type:"passive"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/hand_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"encumbering",type:"passive"}

execute if entity @s[type=player] if score @s ca.ench_encumbering_lvl matches 1.. unless predicate cartographer_core:player/cant_crit run attribute @s attack_damage modifier add ca.encumbering_penalty -0.33 add_multiplied_total
execute if entity @s[type=player] if score @s ca.ench_encumbering_lvl matches 1.. if predicate cartographer_core:player/cant_crit run attribute @s attack_damage modifier remove ca.encumbering_penalty