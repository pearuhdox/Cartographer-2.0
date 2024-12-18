execute unless entity @s[type=player] run scoreboard players set @s ca.ench_diversion_lvl 0
execute unless entity @s[type=player] run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"passive/",enchantment:"diversion",type:"passive"}

execute if entity @s[type=player] if score @s ca.ench_diversion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/diversion/do_enchant
execute unless entity @s[type=player] if score @s ca.ench_diversion_lvl matches 1.. unless entity @s[tag=ca.diversion_copy] run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/do_enchant