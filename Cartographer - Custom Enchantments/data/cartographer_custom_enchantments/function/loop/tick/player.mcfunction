#say player loop

#execute if score @s ca.ethereal_time matches 1.. run scoreboard players remove @s ca.ethereal_time 1

#function cartographer_custom_enchantments:loop/tick/reset


execute if score @s ca.concentration_time matches 1.. run scoreboard players remove @s ca.concentration_time 1
execute if score @s ca.overcharge_time matches 1.. run scoreboard players remove @s ca.overcharge_time 1

execute unless score @s ca.ench_trailblazer_lvl matches 1.. run scoreboard players set @s ca.sprint_dist_trailblazer 0

#Run Auto Charge
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has_auto_charge run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/check

#Run Reconstruction
execute if predicate cartographer_core:periodic_tick/100 if predicate cartographer_custom_enchantments:has_reconstruction run function cartographer_custom_enchantments:enchantment/passive/reconstruction/check

#Run Curse of Crumbling
execute if predicate cartographer_core:periodic_tick/100 if predicate cartographer_custom_enchantments:has_crumbling run function cartographer_custom_enchantments:enchantment/curse/crumbling/check


#Run Throwable Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has_throwable run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/recharge/check

#execute if score @s ca.ench_auto_charge_slot matches -106.. if entity @s[tag=ca.auto_charge_needs_recharge] run scoreboard players add @s ca.auto_charge_time 1
#execute if score @s ca.ench_auto_charge_slot matches -106.. if entity @s[tag=ca.auto_charge_needs_recharge] if score @s ca.auto_charge_time >= @s ca.auto_charge_time_max run say AUTO CHARGE


execute if score @s ca.special_attack_delay matches 1.. run scoreboard players remove @s ca.special_attack_delay 1


#Infinity Processing
function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/player
