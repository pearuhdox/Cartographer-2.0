scoreboard players operation $qc_time_back ca.ench_repeating_lvl = @s ca.ench_quick_charge_lvl
scoreboard players operation $qc_time_back ca.ench_repeating_lvl *= $5 ca.CONSTANT

scoreboard players operation $hv_time_loss ca.ench_repeating_lvl = @s ca.ench_heaviness_lvl
scoreboard players operation $hv_time_loss ca.ench_repeating_lvl *= $10 ca.CONSTANT


scoreboard players set $time_before_reload ca.ench_repeating_lvl 26
scoreboard players operation $time_before_reload ca.ench_repeating_lvl -= $qc_time_back ca.ench_repeating_lvl
scoreboard players operation $time_before_reload ca.ench_repeating_lvl += $hv_time_loss ca.ench_repeating_lvl
execute if score @s ca.ench_jamming_lvl matches 1.. run scoreboard players set $time_before_reload ca.ench_repeating_lvl 72000
execute if score $time_before_reload ca.ench_repeating_lvl matches ..1 run scoreboard players set $time_before_reload ca.ench_repeating_lvl 2

execute if score @s ca.load_crossbow_time matches 1 run playsound minecraft:item.crossbow.loading_start player @a[distance=..16] ~ ~ ~ 1 1
execute if score @s ca.load_crossbow_time matches 10 run playsound minecraft:item.crossbow.loading_middle player @a[distance=..16] ~ ~ ~ 1 1

execute if score @s ca.load_crossbow_time = $time_before_reload ca.ench_repeating_lvl run scoreboard players set @s ca.repeating_reload_time 0
execute if score @s ca.load_crossbow_time = $time_before_reload ca.ench_repeating_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reset_internal

execute if score @s ca.load_crossbow_time >= $time_before_reload ca.ench_repeating_lvl run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/load_tick
