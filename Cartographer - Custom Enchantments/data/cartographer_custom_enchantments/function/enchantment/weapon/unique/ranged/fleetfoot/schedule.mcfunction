#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_fleetfoot_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/ranged/",enchantment:"fleetfoot",type:"weapon"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_fleetfoot_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/ranged/",enchantment:"fleetfoot",type:"weapon"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 unless entity @s[tag=ca.has_custom_status_grounded] if score @s ca.ench_fleetfoot_lvl matches 1.. unless score @s ca.fleetfoot_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/activate