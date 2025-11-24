
#execute if score @s ca.ethereal_time matches 1.. run scoreboard players remove @s ca.ethereal_time 1

#function cartographer_custom_enchantments:loop/tick/reset

scoreboard players enable @s lightborn
execute if score @s lightborn matches 1.. run function cartographer_custom_enchantments:enchantment/tool/lightborn/toggle

scoreboard players enable @s toggle_warning
execute if score @s toggle_warning matches 1.. run function cartographer_custom_enchantments:indicator/warning/toggle

scoreboard players enable @s toggle_charging
execute if score @s toggle_charging matches 1.. run function cartographer_custom_enchantments:indicator/charging/toggle

scoreboard players enable @s toggle_cc
execute if score @s toggle_cc matches 1.. run function cartographer_custom_enchantments:indicator/cc/toggle

execute if score @s ca.concentration_time matches 1.. run scoreboard players remove @s ca.concentration_time 1
execute if score @s ca.overcharge_time matches 1.. run scoreboard players remove @s ca.overcharge_time 1

execute unless score @s ca.ench_trailblazer_lvl matches 1.. run scoreboard players set @s ca.sprint_dist_trailblazer 0

#Run Drilling Cooldown Here
execute if score @s ca.drilling_cooldown matches 1.. run scoreboard players remove @s ca.drilling_cooldown 1
execute unless score @s ca.drilling_cooldown matches 0.. run scoreboard players set @s ca.drilling_cooldown 0

#Run Auto Charge
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/auto_charge run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/check

#Run Reconstruction
execute if predicate cartographer_core:periodic_tick/100 if predicate cartographer_custom_enchantments:has/reconstruction run function cartographer_custom_enchantments:enchantment/passive/reconstruction/check

#Run Curse of Crumbling
execute if predicate cartographer_core:periodic_tick/100 if entity @s[gamemode=!creative,gamemode=!spectator] if predicate cartographer_custom_enchantments:has/crumbling run function cartographer_custom_enchantments:enchantment/curse/crumbling/check

#Run Throwable Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/throwable run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/recharge/check

#Run Ambushing Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/ambushing run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/recharge/check

#Run Quick Strike Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/quick_strike run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/check

#Run Lunging Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/lunging run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/check

#Run Riposte Cooldowns
execute if predicate cartographer_core:periodic_tick/20 if predicate cartographer_custom_enchantments:has/riposte run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/recharge/check


#execute if score @s ca.ench_auto_charge_slot matches -106.. if entity @s[tag=ca.auto_charge_needs_recharge] run scoreboard players add @s ca.auto_charge_time 1


execute if score @s ca.special_attack_delay matches 1.. run scoreboard players remove @s ca.special_attack_delay 1

execute if score @s ca.ambushing_safety matches 1.. run scoreboard players remove @s ca.ambushing_safety 1

#Infinity Processing
function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/player
