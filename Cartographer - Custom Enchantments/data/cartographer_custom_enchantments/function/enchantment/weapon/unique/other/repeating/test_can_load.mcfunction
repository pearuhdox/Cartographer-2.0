scoreboard players operation $qc_time_back ca.ench_repeating_lvl = @s ca.ench_quick_charge_lvl
scoreboard players operation $qc_time_back ca.ench_repeating_lvl *= $5 ca.CONSTANT

scoreboard players set $time_before_reload ca.ench_repeating_lvl 21
scoreboard players operation $time_before_reload ca.ench_repeating_lvl -= $qc_time_back ca.ench_repeating_lvl

execute if score @s ca.load_crossbow_time = $time_before_reload ca.ench_repeating_lvl run scoreboard players set @s ca.repeating_reload_time 0
execute if score @s ca.load_crossbow_time = $time_before_reload ca.ench_repeating_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reset_internal

execute if score @s ca.load_crossbow_time >= $time_before_reload ca.ench_repeating_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/load_tick
