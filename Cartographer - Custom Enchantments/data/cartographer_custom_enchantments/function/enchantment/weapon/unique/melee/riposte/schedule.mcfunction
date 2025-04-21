#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_riposte_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"riposte",type:"weapon"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/riposte/offhand unless data entity @s equipment.offhand.components."minecraft:custom_data".riposte_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/apply_offhand
execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/riposte/mainhand unless data entity @s SelectedItem.components."minecraft:custom_data".riposte_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/apply

execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.indicator_cc
execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set @s ca.cc_time 4

execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_riposte_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"riposte",type:"weapon"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1