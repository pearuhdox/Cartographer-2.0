scoreboard players operation @s ca.hand_slot_prev = @s ca.hand_slot
execute store result score @s ca.hand_slot run data get entity @s SelectedItemSlot

scoreboard players set @s ca.ench_adrenaline_hand_lvl 0
scoreboard players set @s ca.ench_adrenaline_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/adrenaline
scoreboard players operation @s ca.ench_adrenaline_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_gear_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_hand_lvl


scoreboard players set @s ca.ench_frenzy_hand_lvl 0
scoreboard players set @s ca.ench_frenzy_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/frenzy
scoreboard players operation @s ca.ench_frenzy_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_gear_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_hand_lvl


#scoreboard players set @s ca.ench_soulbound_hand_lvl 0
#scoreboard players set @s ca.ench_soulbound_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/soulbound
#scoreboard players operation @s ca.ench_soulbound_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_gear_lvl
#scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_hand_lvl


scoreboard players set @s ca.ench_spurs_hand_lvl 0
scoreboard players set @s ca.ench_spurs_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/spurs
scoreboard players operation @s ca.ench_spurs_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_gear_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_hand_lvl


scoreboard players set @s ca.ench_vengeance_hand_lvl 0
scoreboard players set @s ca.ench_vengeance_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/vengeance
scoreboard players operation @s ca.ench_vengeance_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_gear_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_hand_lvl


scoreboard players set @s ca.ench_ethereal_hand_lvl 0
scoreboard players set @s ca.ench_ethereal_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/ethereal
scoreboard players operation @s ca.ench_ethereal_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_gear_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_hand_lvl


scoreboard players set @s ca.ench_hardened_hand_lvl 0
scoreboard players set @s ca.ench_hardened_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/hardened
scoreboard players operation @s ca.ench_hardened_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_gear_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_hand_lvl


scoreboard players set @s ca.ench_poise_hand_lvl 0
scoreboard players set @s ca.ench_poise_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/poise
scoreboard players operation @s ca.ench_poise_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_gear_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_hand_lvl


scoreboard players set @s ca.ench_steadfast_hand_lvl 0
scoreboard players set @s ca.ench_steadfast_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/steadfast
scoreboard players operation @s ca.ench_steadfast_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_gear_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_hand_lvl


scoreboard players set @s ca.ench_bulwark_hand_lvl 0
scoreboard players set @s ca.ench_bulwark_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/bulwark
scoreboard players operation @s ca.ench_bulwark_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_gear_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_hand_lvl


scoreboard players set @s ca.ench_sidestep_hand_lvl 0
scoreboard players set @s ca.ench_sidestep_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/sidestep
scoreboard players operation @s ca.ench_sidestep_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_gear_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_hand_lvl


scoreboard players set @s ca.ench_courageous_hand_lvl 0
scoreboard players set @s ca.ench_courageous_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/courageous
scoreboard players operation @s ca.ench_courageous_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_gear_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_hand_lvl


scoreboard players set @s ca.ench_unseen_hand_lvl 0
scoreboard players set @s ca.ench_unseen_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/unseen
scoreboard players operation @s ca.ench_unseen_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_gear_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_hand_lvl


scoreboard players set @s ca.ench_tenacity_hand_lvl 0
scoreboard players set @s ca.ench_tenacity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/tenacity
scoreboard players operation @s ca.ench_tenacity_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_gear_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_hand_lvl


scoreboard players set @s ca.ench_inertia_hand_lvl 0
scoreboard players set @s ca.ench_inertia_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/inertia
scoreboard players operation @s ca.ench_inertia_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_gear_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_hand_lvl


scoreboard players set @s ca.ench_diversion_hand_lvl 0
scoreboard players set @s ca.ench_diversion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/diversion
scoreboard players operation @s ca.ench_diversion_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_gear_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_hand_lvl


scoreboard players set @s ca.ench_surge_hand_lvl 0
scoreboard players set @s ca.ench_surge_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/surge
scoreboard players operation @s ca.ench_surge_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_gear_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_hand_lvl


scoreboard players set @s ca.ench_deadeye_hand_lvl 0
scoreboard players set @s ca.ench_deadeye_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/deadeye
scoreboard players operation @s ca.ench_deadeye_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_gear_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_hand_lvl


scoreboard players set @s ca.ench_trailblazer_hand_lvl 0
scoreboard players set @s ca.ench_trailblazer_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/trailblazer
scoreboard players operation @s ca.ench_trailblazer_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_gear_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_hand_lvl


scoreboard players set @s ca.ench_gravity_hand_lvl 0
scoreboard players set @s ca.ench_gravity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/gravity
scoreboard players operation @s ca.ench_gravity_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_gear_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_hand_lvl


scoreboard players set @s ca.ench_momentum_hand_lvl 0
scoreboard players set @s ca.ench_momentum_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/momentum
scoreboard players operation @s ca.ench_momentum_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_gear_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_hand_lvl


scoreboard players set @s ca.ench_starfall_hand_lvl 0
scoreboard players set @s ca.ench_starfall_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/starfall
scoreboard players operation @s ca.ench_starfall_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_gear_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_hand_lvl


scoreboard players set @s ca.ench_orbit_hand_lvl 0
scoreboard players set @s ca.ench_orbit_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/orbit
scoreboard players operation @s ca.ench_orbit_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_gear_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_hand_lvl


scoreboard players set @s ca.ench_storm_hand_lvl 0
scoreboard players set @s ca.ench_storm_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/storm
scoreboard players operation @s ca.ench_storm_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_gear_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_hand_lvl


scoreboard players set @s ca.ench_induction_hand_lvl 0
scoreboard players set @s ca.ench_induction_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/induction
scoreboard players operation @s ca.ench_induction_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_gear_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_hand_lvl


scoreboard players set @s ca.ench_aberration_hand_lvl 0
scoreboard players set @s ca.ench_aberration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/aberration
scoreboard players operation @s ca.ench_aberration_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_gear_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_hand_lvl


scoreboard players set @s ca.ench_quake_hand_lvl 0
scoreboard players set @s ca.ench_quake_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/quake
scoreboard players operation @s ca.ench_quake_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_gear_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_hand_lvl


scoreboard players set @s ca.ench_eruption_hand_lvl 0
scoreboard players set @s ca.ench_eruption_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/eruption
scoreboard players operation @s ca.ench_eruption_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_gear_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_hand_lvl


scoreboard players set @s ca.ench_soulfire_hand_lvl 0
scoreboard players set @s ca.ench_soulfire_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/soulfire
scoreboard players operation @s ca.ench_soulfire_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_gear_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_hand_lvl


#scoreboard players set @s ca.ench_reconstruction_hand_lvl 0
#scoreboard players set @s ca.ench_reconstruction_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:passive/reconstruction
#scoreboard players operation @s ca.ench_reconstruction_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_reconstruction_lvl += @s ca.ench_reconstruction_gear_lvl
#scoreboard players operation @s ca.ench_reconstruction_lvl += @s ca.ench_reconstruction_hand_lvl


scoreboard players set @s ca.ench_hex_eater_hand_lvl 0
scoreboard players set @s ca.ench_hex_eater_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/hex_eater
scoreboard players operation @s ca.ench_hex_eater_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_hex_eater_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_gear_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_hand_lvl


scoreboard players set @s ca.ench_duelist_hand_lvl 0
scoreboard players set @s ca.ench_duelist_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/duelist
scoreboard players operation @s ca.ench_duelist_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_duelist_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_gear_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_hand_lvl


scoreboard players set @s ca.ench_hunter_hand_lvl 0
scoreboard players set @s ca.ench_hunter_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/hunter
scoreboard players operation @s ca.ench_hunter_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_hunter_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_gear_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_hand_lvl


scoreboard players set @s ca.ench_focus_hand_lvl 0
scoreboard players set @s ca.ench_focus_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/focus
scoreboard players operation @s ca.ench_focus_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_focus_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_gear_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_hand_lvl


scoreboard players set @s ca.ench_first_strike_hand_lvl 0
scoreboard players set @s ca.ench_first_strike_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/first_strike
scoreboard players operation @s ca.ench_first_strike_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_first_strike_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_gear_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_hand_lvl


scoreboard players set @s ca.ench_follow_up_hand_lvl 0
scoreboard players set @s ca.ench_follow_up_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/follow_up
scoreboard players operation @s ca.ench_follow_up_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_follow_up_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_gear_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_hand_lvl


scoreboard players set @s ca.ench_concentration_hand_lvl 0
scoreboard players set @s ca.ench_concentration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/concentration
scoreboard players operation @s ca.ench_concentration_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_concentration_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_gear_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_hand_lvl


scoreboard players set @s ca.ench_chaotic_hand_lvl 0
scoreboard players set @s ca.ench_chaotic_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/general/chaotic
scoreboard players operation @s ca.ench_chaotic_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_chaotic_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_gear_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_hand_lvl


scoreboard players set @s ca.ench_rushdown_hand_lvl 0
scoreboard players set @s ca.ench_rushdown_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/melee/rushdown
scoreboard players operation @s ca.ench_rushdown_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_rushdown_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_gear_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_hand_lvl


scoreboard players set @s ca.ench_leverage_hand_lvl 0
scoreboard players set @s ca.ench_leverage_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/melee/leverage
scoreboard players operation @s ca.ench_leverage_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_leverage_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_gear_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_hand_lvl


scoreboard players set @s ca.ench_overcharge_hand_lvl 0
scoreboard players set @s ca.ench_overcharge_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/ranged/overcharge
scoreboard players operation @s ca.ench_overcharge_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_overcharge_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_gear_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_hand_lvl


scoreboard players set @s ca.ench_point_blank_hand_lvl 0
scoreboard players set @s ca.ench_point_blank_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/ranged/point_blank
scoreboard players operation @s ca.ench_point_blank_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_point_blank_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_gear_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_hand_lvl


scoreboard players set @s ca.ench_sharpshot_hand_lvl 0
scoreboard players set @s ca.ench_sharpshot_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/damage/ranged/sharpshot
scoreboard players operation @s ca.ench_sharpshot_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_sharpshot_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_gear_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_hand_lvl


scoreboard players set @s ca.ench_recoil_hand_lvl 0
scoreboard players set @s ca.ench_recoil_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/recoil
scoreboard players operation @s ca.ench_recoil_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_recoil_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_gear_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_hand_lvl

#Special Recoil Hand Condition
execute if score @s ca.ench_recoil_hand_lvl matches 1.. run tag @s remove ca.recoil_block
execute if score @s ca.ench_recoil_hand_lvl matches 1.. if data storage cartographer_core:player_equip data.main.components.minecraft:custom_data.recoil_block run tag @s add ca.recoil_block


scoreboard players set @s ca.ench_explosive_hand_lvl 0
scoreboard players set @s ca.ench_explosive_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
scoreboard players operation @s ca.ench_explosive_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_explosive_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_gear_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_hand_lvl


scoreboard players set @s ca.ench_pulling_hand_lvl 0
scoreboard players set @s ca.ench_pulling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_pulling_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_gear_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_hand_lvl


scoreboard players set @s ca.ench_repulsion_hand_lvl 0
scoreboard players set @s ca.ench_repulsion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/repulsion
scoreboard players operation @s ca.ench_repulsion_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_repulsion_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_gear_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_hand_lvl


scoreboard players set @s ca.ench_cleaving_hand_lvl 0
scoreboard players set @s ca.ench_cleaving_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/cleaving
scoreboard players operation @s ca.ench_cleaving_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_cleaving_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_gear_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_hand_lvl


scoreboard players set @s ca.ench_slamming_hand_lvl 0
scoreboard players set @s ca.ench_slamming_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/slamming
scoreboard players operation @s ca.ench_slamming_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_slamming_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_gear_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_hand_lvl


scoreboard players set @s ca.ench_thrusting_hand_lvl 0
scoreboard players set @s ca.ench_thrusting_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/thrusting
scoreboard players operation @s ca.ench_thrusting_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_thrusting_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_gear_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_hand_lvl


scoreboard players set @s ca.ench_quick_strike_hand_lvl 0
scoreboard players set @s ca.ench_quick_strike_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/quick_strike
scoreboard players operation @s ca.ench_quick_strike_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_quick_strike_lvl matches 1.. run scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_gear_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_hand_lvl


scoreboard players set @s ca.ench_riposte_hand_lvl 0
scoreboard players set @s ca.ench_riposte_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/riposte
scoreboard players operation @s ca.ench_riposte_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_riposte_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_gear_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_hand_lvl


scoreboard players set @s ca.ench_ambushing_hand_lvl 0
scoreboard players set @s ca.ench_ambushing_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/ambushing
scoreboard players operation @s ca.ench_ambushing_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_ambushing_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_gear_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_hand_lvl


scoreboard players set @s ca.ench_lunging_hand_lvl 0
scoreboard players set @s ca.ench_lunging_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/lunging
scoreboard players operation @s ca.ench_lunging_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_lunging_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_gear_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_hand_lvl


scoreboard players set @s ca.ench_throwable_hand_lvl 0
scoreboard players set @s ca.ench_throwable_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/melee/throwable
scoreboard players operation @s ca.ench_throwable_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_throwable_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_gear_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_hand_lvl


scoreboard players set @s ca.ench_correction_hand_lvl 0
scoreboard players set @s ca.ench_correction_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/correction
scoreboard players operation @s ca.ench_correction_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_correction_lvl matches 1.. run scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_gear_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_hand_lvl


scoreboard players set @s ca.ench_ricochet_hand_lvl 0
scoreboard players set @s ca.ench_ricochet_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/ricochet
scoreboard players operation @s ca.ench_ricochet_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_ricochet_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_gear_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_hand_lvl


scoreboard players set @s ca.ench_barbed_hand_lvl 0
scoreboard players set @s ca.ench_barbed_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/barbed
scoreboard players operation @s ca.ench_barbed_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_barbed_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_gear_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_hand_lvl


scoreboard players set @s ca.ench_ripper_hand_lvl 0
scoreboard players set @s ca.ench_ripper_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/ripper
scoreboard players operation @s ca.ench_ripper_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_ripper_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_gear_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_hand_lvl


scoreboard players set @s ca.ench_shrapnel_hand_lvl 0
scoreboard players set @s ca.ench_shrapnel_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/shrapnel
scoreboard players operation @s ca.ench_shrapnel_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_shrapnel_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_gear_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_hand_lvl


scoreboard players set @s ca.ench_fleetfoot_hand_lvl 0
scoreboard players set @s ca.ench_fleetfoot_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/fleetfoot
scoreboard players operation @s ca.ench_fleetfoot_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_fleetfoot_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_gear_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_hand_lvl


scoreboard players set @s ca.ench_grappling_hand_lvl 0
scoreboard players set @s ca.ench_grappling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/grappling
scoreboard players operation @s ca.ench_grappling_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_grappling_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_gear_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_hand_lvl


scoreboard players set @s ca.ench_barrage_hand_lvl 0
scoreboard players set @s ca.ench_barrage_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/barrage
scoreboard players operation @s ca.ench_barrage_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_barrage_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_gear_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_hand_lvl


scoreboard players set @s ca.ench_collapse_hand_lvl 0
scoreboard players set @s ca.ench_collapse_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/ranged/collapse
scoreboard players operation @s ca.ench_collapse_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_collapse_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_gear_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_hand_lvl


#scoreboard players set @s ca.ench_auto_charge_hand_lvl 0
#scoreboard players set @s ca.ench_auto_charge_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/other/auto_charge
#scoreboard players operation @s ca.ench_auto_charge_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_auto_charge_lvl += @s ca.ench_auto_charge_gear_lvl
#scoreboard players operation @s ca.ench_auto_charge_lvl += @s ca.ench_auto_charge_hand_lvl


#scoreboard players set @s ca.ench_scavenger_hand_lvl 0
#scoreboard players set @s ca.ench_scavenger_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/other/scavenger
#scoreboard players operation @s ca.ench_scavenger_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_scavenger_lvl += @s ca.ench_scavenger_gear_lvl
#scoreboard players operation @s ca.ench_scavenger_lvl += @s ca.ench_scavenger_hand_lvl


scoreboard players set @s ca.ench_repeating_hand_lvl 0
scoreboard players set @s ca.ench_repeating_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players operation @s ca.ench_repeating_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_repeating_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_gear_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_hand_lvl


#scoreboard players set @s ca.ench_crumbling_hand_lvl 0
#scoreboard players set @s ca.ench_crumbling_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/crumbling
#scoreboard players operation @s ca.ench_crumbling_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_gear_lvl
#scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_hand_lvl


#scoreboard players set @s ca.ench_shattering_hand_lvl 0
#scoreboard players set @s ca.ench_shattering_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/shattering
#scoreboard players operation @s ca.ench_shattering_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_gear_lvl
#scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_hand_lvl


scoreboard players set @s ca.ench_haunting_hand_lvl 0
scoreboard players set @s ca.ench_haunting_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/haunting
scoreboard players operation @s ca.ench_haunting_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_gear_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_hand_lvl


scoreboard players set @s ca.ench_corruption_hand_lvl 0
scoreboard players set @s ca.ench_corruption_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/corruption
scoreboard players operation @s ca.ench_corruption_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_gear_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_hand_lvl


scoreboard players set @s ca.ench_crippling_hand_lvl 0
scoreboard players set @s ca.ench_crippling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/crippling
scoreboard players operation @s ca.ench_crippling_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_gear_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_hand_lvl


scoreboard players set @s ca.ench_pride_hand_lvl 0
scoreboard players set @s ca.ench_pride_lvl 0
scoreboard players set @s ca.ench_main_pride_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/pride
scoreboard players operation @s ca.ench_pride_hand_lvl += $ench ca.ench_var
scoreboard players operation @s ca.ench_main_pride_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_gear_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_hand_lvl

execute if score @s ca.ench_pride_lvl matches 1.. run scoreboard players set @s ca.ench_pride_check 1


scoreboard players set @s ca.ench_two_handed_hand_lvl 0
scoreboard players set @s ca.ench_two_handed_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/two_handed
scoreboard players operation @s ca.ench_two_handed_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_gear_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_hand_lvl

execute if score @s ca.ench_two_handed_lvl matches 1.. run scoreboard players set @s ca.ench_two_handed_check 1

scoreboard players set @s ca.ench_instability_hand_lvl 0
scoreboard players set @s ca.ench_instability_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/instability
scoreboard players operation @s ca.ench_instability_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_gear_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_hand_lvl


scoreboard players set @s ca.ench_melee_fragility_hand_lvl 0
scoreboard players set @s ca.ench_melee_fragility_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/melee_fragility
scoreboard players operation @s ca.ench_melee_fragility_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_gear_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_hand_lvl


scoreboard players set @s ca.ench_projectile_fragility_hand_lvl 0
scoreboard players set @s ca.ench_projectile_fragility_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/projectile_fragility
scoreboard players operation @s ca.ench_projectile_fragility_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_gear_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_hand_lvl


scoreboard players set @s ca.ench_clumsiness_hand_lvl 0
scoreboard players set @s ca.ench_clumsiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/clumsiness
scoreboard players operation @s ca.ench_clumsiness_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_gear_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_hand_lvl


scoreboard players set @s ca.ench_encumbering_hand_lvl 0
scoreboard players set @s ca.ench_encumbering_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/encumbering
scoreboard players operation @s ca.ench_encumbering_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_gear_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_hand_lvl


#scoreboard players set @s ca.ench_regret_hand_lvl 0
#scoreboard players set @s ca.ench_regret_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/regret
#scoreboard players operation @s ca.ench_regret_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_gear_lvl
#scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_hand_lvl


#scoreboard players set @s ca.ench_gluttony_hand_lvl 0
#scoreboard players set @s ca.ench_gluttony_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:curse/gluttony
#scoreboard players operation @s ca.ench_gluttony_hand_lvl += $ench ca.ench_var

#scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_gear_lvl
#scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_hand_lvl


scoreboard players set @s ca.ench_drilling_hand_lvl 0
scoreboard players set @s ca.ench_drilling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_gear_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_hand_lvl


scoreboard players set @s ca.ench_excavator_hand_lvl 0
scoreboard players set @s ca.ench_excavator_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:tool/excavator
scoreboard players operation @s ca.ench_excavator_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_gear_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_hand_lvl


scoreboard players set @s ca.ench_lightborn_hand_lvl 0
scoreboard players set @s ca.ench_lightborn_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:tool/lightborn
scoreboard players operation @s ca.ench_lightborn_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_gear_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_hand_lvl


scoreboard players set @s ca.ench_multitool_hand_lvl 0
scoreboard players set @s ca.ench_multitool_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:tool/multitool
scoreboard players operation @s ca.ench_multitool_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_gear_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_hand_lvl


scoreboard players set @s ca.ench_flame_hand_lvl 0
scoreboard players set @s ca.ench_flame_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:flame
scoreboard players operation @s ca.ench_flame_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_gear_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_hand_lvl


scoreboard players set @s ca.ench_power_hand_lvl 0
scoreboard players set @s ca.ench_power_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:power
scoreboard players operation @s ca.ench_power_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_gear_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_hand_lvl


scoreboard players set @s ca.ench_punch_hand_lvl 0
scoreboard players set @s ca.ench_punch_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:punch
scoreboard players operation @s ca.ench_punch_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_gear_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_hand_lvl


scoreboard players set @s ca.ench_knockback_hand_lvl 0
scoreboard players set @s ca.ench_knockback_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:knockback
scoreboard players operation @s ca.ench_knockback_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_gear_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_hand_lvl


scoreboard players set @s ca.ench_thorns_hand_lvl 0
scoreboard players set @s ca.ench_thorns_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_gear_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_hand_lvl


scoreboard players set @s ca.throwable_time -10000
scoreboard players set @s ca.lunging_time 0
scoreboard players set @s ca.ambushing_time 0

scoreboard players set @s ca.channeling_time 0

execute if score @s ca.riposte_time matches 1.. store result storage cartographer:core slot int 1 run scoreboard players get @s ca.hand_slot_prev
execute if score @s ca.riposte_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/unapply_slot with storage cartographer:core
scoreboard players set @s ca.riposte_time 0
