#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_duelist_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"tool/",enchantment:"drilling",type:"tool"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_duelist_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"tool/",enchantment:"drilling",type:"tool"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1