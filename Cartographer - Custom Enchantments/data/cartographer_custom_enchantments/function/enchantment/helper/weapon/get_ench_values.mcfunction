scoreboard players operation $hex_eater ca.ench_value = @s ca.ench_hex_eater_lvl
scoreboard players operation $chaotic ca.ench_value = @s ca.ench_chaotic_lvl
scoreboard players operation $hunter ca.ench_value = @s ca.ench_hunter_lvl
scoreboard players operation $duelist ca.ench_value = @s ca.ench_duelist_lvl

scoreboard players operation $first_strike ca.ench_value = @s ca.ench_first_strike_lvl
scoreboard players operation $follow_up ca.ench_value = @s ca.ench_follow_up_lvl
scoreboard players operation $focus ca.ench_value = @s ca.ench_focus_lvl

execute if score $attack_type ca.ench_value matches 1 if score @s ca.concentration_time matches 1.. run scoreboard players operation $concentration ca.ench_value = @s ca.ench_concentration_lvl
execute unless score $attack_type ca.ench_value matches 1 run scoreboard players operation $concentration ca.ench_value = @s ca.ench_concentration_lvl

scoreboard players operation $rushdown ca.ench_value = @s ca.ench_rushdown_lvl
scoreboard players operation $leverage ca.ench_value = @s ca.ench_leverage_lvl

scoreboard players operation $overcharge ca.ench_value = @s ca.ench_overcharge_lvl

scoreboard players operation $point_blank ca.ench_value = @s ca.ench_point_blank_lvl
scoreboard players operation $sharpshot ca.ench_value = @s ca.ench_sharpshot_lvl

scoreboard players operation $explosive ca.ench_value = @s ca.ench_explosive_lvl
scoreboard players operation $pulling ca.ench_value = @s ca.ench_pulling_lvl

scoreboard players operation $grappling ca.ench_value = @s ca.ench_grappling_lvl

scoreboard players operation $shrapnel ca.ench_value = @s ca.ench_shrapnel_lvl
scoreboard players operation $ripper ca.ench_value = @s ca.ench_ripper_lvl
scoreboard players operation $barbed ca.ench_value = @s ca.ench_barbed_lvl

scoreboard players operation $collapse ca.ench_value = @s ca.ench_collapse_lvl

scoreboard players operation $drilling ca.ench_value = @s ca.ench_drilling_lvl
scoreboard players operation $excavator ca.ench_value = @s ca.ench_excavator_lvl