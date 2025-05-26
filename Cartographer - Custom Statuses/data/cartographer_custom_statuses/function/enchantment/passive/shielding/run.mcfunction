
execute unless entity @s[type=player] unless entity @s[tag=ca.shielding_applied_mob] if predicate cartographer_core:periodic_tick/20 run function cartographer_custom_statuses:enchantment/passive/shielding/apply_mob_setup

execute if entity @s[nbt={HurtTime:9s}] run function cartographer_custom_statuses:enchantment/passive/shielding/hit

execute if score @s ca.ench_shielding_lvl matches 1.. if score @s ca.shielding_time matches 1 run tag @s add ca.shielding_restart
execute if score @s ca.ench_shielding_lvl matches 1.. unless score @s ca.shielding_time matches 1.. run function cartographer_custom_statuses:enchantment/passive/shielding/do_enchant