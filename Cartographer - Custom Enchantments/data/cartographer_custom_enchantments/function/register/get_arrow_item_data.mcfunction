execute store result score @s ca.ench_hex_eater_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hex_eater
execute store result score @s ca.ench_chaotic_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/chaotic
execute store result score @s ca.ench_hunter_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hunter
execute store result score @s ca.ench_duelist_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/duelist
execute store result score @s ca.ench_first_strike_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/first_strike
execute store result score @s ca.ench_follow_up_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/follow_up
execute store result score @s ca.ench_focus_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/focus

scoreboard players set $active ca.concentration_time 0
execute on origin if score @s ca.concentration_time matches 1.. run scoreboard players set $active ca.concentration_time 1
execute if score $active ca.concentration_time matches 1.. store result score @s ca.ench_concentration_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/concentration

execute store result score @s ca.ench_rushdown_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/rushdown
execute store result score @s ca.ench_leverage_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/leverage


scoreboard players set $active ca.ench_overcharge_lvl 0
execute on origin if score @s ca.overcharge_time matches 1.. run scoreboard players set $active ca.overcharge_time 1
execute if score $active ca.overcharge_time matches 1.. store result score @s ca.ench_overcharge_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/overcharge

execute store result score @s ca.ench_point_blank_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/point_blank
execute store result score @s ca.ench_sharpshot_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/sharpshot

execute store result score @s ca.ench_explosive_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/explosive
execute store result score @s ca.ench_pulling_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling

execute store result score @s ca.ench_grappling_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/grappling

execute store result score @s ca.ench_correction_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/correction

execute store result score @s ca.ench_ricochet_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ricochet

execute store result score @s ca.ench_barrage_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barrage

execute store result score @s ca.ench_shrapnel_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/shrapnel
execute store result score @s ca.ench_ripper_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ripper
execute store result score @s ca.ench_barbed_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barbed

execute store result score @s ca.ench_collapse_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/collapse

execute store result score @s ca.ench_drilling_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
execute store result score @s ca.ench_excavator_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:tool/excavator


execute store result score @s ca.ench_multishot_lvl run data get entity @s item.components.minecraft:enchantments.minecraft:multishot

execute store result score @s ca.ench_infinity_lvl run data get entity @s item.components.minecraft:enchantments.minecraft:infinity

execute store result score @s ca.ench_starfall_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/starfall
execute store result score @s ca.ench_orbit_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/orbit
execute store result score @s ca.ench_storm_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/storm
execute store result score @s ca.ench_induction_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/induction
execute store result score @s ca.ench_eruption_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/eruption
execute store result score @s ca.ench_soulfire_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulfire
execute store result score @s ca.ench_quake_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/quake
execute store result score @s ca.ench_aberration_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/aberration

execute store result score @s ca.ench_starfall_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/starfall
execute store result score @s ca.ench_orbit_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/orbit
execute store result score @s ca.ench_storm_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/storm
execute store result score @s ca.ench_induction_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/induction
execute store result score @s ca.ench_eruption_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/eruption
execute store result score @s ca.ench_soulfire_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulfire
execute store result score @s ca.ench_quake_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/quake
execute store result score @s ca.ench_aberration_main_lvl run data get entity @s item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/aberration

execute store result score @s ca.ench_flame_lvl run data get entity @s item.components.minecraft:enchantments.minecraft:flame
execute store result score @s ca.ench_power_lvl run data get entity @s item.components.minecraft:enchantments.minecraft:power
execute store result score @s ca.ench_punch_lvl run data get entity @s item.components.minecraft:enchantments.minecraft:punch
