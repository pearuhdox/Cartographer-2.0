#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_duelist_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"tool/",enchantment:"multitool",type:"tool"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute store result score $fleetfoot_lvl_check ca.ench_fleetfoot_lvl run data get entity @s SelectedItem.components."minecraft:custom_data".fleetfoot_applied

execute unless score $fleetfoot_lvl_check ca.ench_fleetfoot_lvl = @s ca.ench_fleetfoot_main_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/apply