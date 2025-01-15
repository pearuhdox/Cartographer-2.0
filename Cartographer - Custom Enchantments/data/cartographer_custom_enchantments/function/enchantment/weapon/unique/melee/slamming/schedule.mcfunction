#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_slamming_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"slamming",type:"weapon"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_slamming_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"slamming",type:"weapon"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] if predicate cartographer_core:periodic_tick/5 if score @s ca.ench_slamming_lvl matches 1.. unless score @s ca.special_attack_wait matches 1.. unless entity @s[tag=ca.is_slamming] if entity @a[distance=..5,gamemode=!spectator,gamemode=!creative] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/entity_use/wrapper
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/5 if score @s ca.ench_slamming_lvl matches 1.. unless entity @s[tag=ca.is_slamming] if score @s ca.special_attack_wait matches 1.. run scoreboard players remove @s ca.special_attack_wait 1
