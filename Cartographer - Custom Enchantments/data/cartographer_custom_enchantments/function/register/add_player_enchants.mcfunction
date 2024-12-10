scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_hex_eater_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_chaotic_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_hunter_lvl
scoreboard players operation @s ca.ench_hunter_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_duelist_lvl
scoreboard players operation @s ca.ench_duelist_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_first_strike_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_follow_up_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_focus_lvl
scoreboard players operation @s ca.ench_focus_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin if score @s ca.concentration_time matches 1.. run scoreboard players operation $value ca.ench_var = @s ca.ench_concentration_lvl
scoreboard players operation @s ca.ench_concentration_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_rushdown_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_leverage_lvl
scoreboard players operation @s ca.ench_leverage_lvl += $value ca.ench_var


scoreboard players set $value ca.ench_var 0
execute on origin if score @s ca.overcharge_time matches 1.. run scoreboard players operation $value ca.ench_var = @s ca.ench_overcharge_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_point_blank_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_sharpshot_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_explosive_lvl
scoreboard players operation @s ca.ench_explosive_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_pulling_lvl
scoreboard players operation @s ca.ench_pulling_lvl += $value ca.ench_var


scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_grappling_lvl
scoreboard players operation @s ca.ench_grappling_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_correction_lvl
scoreboard players operation @s ca.ench_correction_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_ricochet_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_barrage_lvl
scoreboard players operation @s ca.ench_barrage_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_shrapnel_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_ripper_lvl
scoreboard players operation @s ca.ench_ripper_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_barbed_lvl
scoreboard players operation @s ca.ench_barbed_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_collapse_lvl
scoreboard players operation @s ca.ench_collapse_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_drilling_lvl
scoreboard players operation @s ca.ench_drilling_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_excavator_lvl
scoreboard players operation @s ca.ench_excavator_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute store result score $value ca.ench_var run data get entity @s weapon.components.minecraft:enchantments.levels.minecraft:multishot
scoreboard players operation @s ca.ench_multishot_lvl += $value ca.ench_var


#Repeating Calculation
scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_repeating_lvl
scoreboard players operation @s ca.ench_repeating_lvl += $value ca.ench_var



scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_starfall_lvl
scoreboard players operation @s ca.ench_starfall_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_orbit_lvl
scoreboard players operation @s ca.ench_orbit_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_storm_lvl
scoreboard players operation @s ca.ench_storm_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_induction_lvl
scoreboard players operation @s ca.ench_induction_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_eruption_lvl
scoreboard players operation @s ca.ench_eruption_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_soulfire_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_quake_lvl
scoreboard players operation @s ca.ench_quake_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_aberration_lvl
scoreboard players operation @s ca.ench_aberration_lvl += $value ca.ench_var



scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_starfall_hand_lvl
scoreboard players operation @s ca.ench_starfall_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_orbit_hand_lvl
scoreboard players operation @s ca.ench_orbit_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_storm_hand_lvl
scoreboard players operation @s ca.ench_storm_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_induction_hand_lvl
scoreboard players operation @s ca.ench_induction_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_eruption_hand_lvl
scoreboard players operation @s ca.ench_eruption_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_soulfire_hand_lvl
scoreboard players operation @s ca.ench_soulfire_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_quake_hand_lvl
scoreboard players operation @s ca.ench_quake_hand_lvl += $value ca.ench_var

scoreboard players set $value ca.ench_var 0
execute on origin run scoreboard players operation $value ca.ench_var = @s ca.ench_aberration_hand_lvl
scoreboard players operation @s ca.ench_aberration_hand_lvl += $value ca.ench_var