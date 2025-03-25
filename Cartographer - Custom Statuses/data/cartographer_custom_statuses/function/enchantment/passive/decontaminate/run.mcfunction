execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_decontaminate_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_statuses",category:"passive/",enchantment:"decontaminate",type:"passive"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1


execute if predicate cartographer_core:periodic_tick/10 if score @s ca.ench_decontaminate_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/decontaminate/do_enchant