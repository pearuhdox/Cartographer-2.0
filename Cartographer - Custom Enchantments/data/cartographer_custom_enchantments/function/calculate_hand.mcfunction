scoreboard players operation @s ca.hand_slot_prev = @s ca.hand_slot
execute store result score @s ca.hand_slot run data get entity @s SelectedItemSlot



scoreboard players set @s ca.ench_adrenaline_main_lvl 0
scoreboard players set @s ca.ench_adrenaline_offh_lvl 0
scoreboard players set @s ca.ench_adrenaline_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/adrenaline
scoreboard players operation @s ca.ench_adrenaline_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/adrenaline
scoreboard players operation @s ca.ench_adrenaline_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_main_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_offh_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_head_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_chest_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_legs_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_feet_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_body_lvl
scoreboard players operation @s ca.ench_adrenaline_lvl += @s ca.ench_adrenaline_saddle_lvl



scoreboard players set @s ca.ench_frenzy_main_lvl 0
scoreboard players set @s ca.ench_frenzy_offh_lvl 0
scoreboard players set @s ca.ench_frenzy_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/frenzy
scoreboard players operation @s ca.ench_frenzy_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/frenzy
scoreboard players operation @s ca.ench_frenzy_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_main_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_offh_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_head_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_chest_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_legs_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_feet_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_body_lvl
scoreboard players operation @s ca.ench_frenzy_lvl += @s ca.ench_frenzy_saddle_lvl



scoreboard players set @s ca.ench_soulbound_main_lvl 0
scoreboard players set @s ca.ench_soulbound_offh_lvl 0
scoreboard players set @s ca.ench_soulbound_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound
scoreboard players operation @s ca.ench_soulbound_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound
scoreboard players operation @s ca.ench_soulbound_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_main_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_offh_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_head_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_chest_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_legs_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_feet_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_body_lvl
scoreboard players operation @s ca.ench_soulbound_lvl += @s ca.ench_soulbound_saddle_lvl



scoreboard players set @s ca.ench_spurs_main_lvl 0
scoreboard players set @s ca.ench_spurs_offh_lvl 0
scoreboard players set @s ca.ench_spurs_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/spurs
scoreboard players operation @s ca.ench_spurs_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/spurs
scoreboard players operation @s ca.ench_spurs_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_main_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_offh_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_head_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_chest_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_legs_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_feet_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_body_lvl
scoreboard players operation @s ca.ench_spurs_lvl += @s ca.ench_spurs_saddle_lvl



scoreboard players set @s ca.ench_ethereal_main_lvl 0
scoreboard players set @s ca.ench_ethereal_offh_lvl 0
scoreboard players set @s ca.ench_ethereal_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/ethereal
scoreboard players operation @s ca.ench_ethereal_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/ethereal
scoreboard players operation @s ca.ench_ethereal_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_main_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_offh_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_head_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_chest_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_legs_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_feet_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_body_lvl
scoreboard players operation @s ca.ench_ethereal_lvl += @s ca.ench_ethereal_saddle_lvl



scoreboard players set @s ca.ench_hardened_main_lvl 0
scoreboard players set @s ca.ench_hardened_offh_lvl 0
scoreboard players set @s ca.ench_hardened_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/hardened
scoreboard players operation @s ca.ench_hardened_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/hardened
scoreboard players operation @s ca.ench_hardened_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_main_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_offh_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_head_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_chest_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_legs_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_feet_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_body_lvl
scoreboard players operation @s ca.ench_hardened_lvl += @s ca.ench_hardened_saddle_lvl



scoreboard players set @s ca.ench_poise_main_lvl 0
scoreboard players set @s ca.ench_poise_offh_lvl 0
scoreboard players set @s ca.ench_poise_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/poise
scoreboard players operation @s ca.ench_poise_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/poise
scoreboard players operation @s ca.ench_poise_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_main_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_offh_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_head_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_chest_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_legs_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_feet_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_body_lvl
scoreboard players operation @s ca.ench_poise_lvl += @s ca.ench_poise_saddle_lvl



scoreboard players set @s ca.ench_steadfast_main_lvl 0
scoreboard players set @s ca.ench_steadfast_offh_lvl 0
scoreboard players set @s ca.ench_steadfast_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/steadfast
scoreboard players operation @s ca.ench_steadfast_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/steadfast
scoreboard players operation @s ca.ench_steadfast_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_main_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_offh_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_head_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_chest_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_legs_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_feet_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_body_lvl
scoreboard players operation @s ca.ench_steadfast_lvl += @s ca.ench_steadfast_saddle_lvl



scoreboard players set @s ca.ench_bulwark_main_lvl 0
scoreboard players set @s ca.ench_bulwark_offh_lvl 0
scoreboard players set @s ca.ench_bulwark_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/bulwark
scoreboard players operation @s ca.ench_bulwark_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/bulwark
scoreboard players operation @s ca.ench_bulwark_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_main_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_offh_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_head_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_chest_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_legs_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_feet_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_body_lvl
scoreboard players operation @s ca.ench_bulwark_lvl += @s ca.ench_bulwark_saddle_lvl



scoreboard players set @s ca.ench_sidestep_main_lvl 0
scoreboard players set @s ca.ench_sidestep_offh_lvl 0
scoreboard players set @s ca.ench_sidestep_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/sidestep
scoreboard players operation @s ca.ench_sidestep_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/sidestep
scoreboard players operation @s ca.ench_sidestep_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_main_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_offh_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_head_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_chest_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_legs_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_feet_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_body_lvl
scoreboard players operation @s ca.ench_sidestep_lvl += @s ca.ench_sidestep_saddle_lvl



scoreboard players set @s ca.ench_courageous_main_lvl 0
scoreboard players set @s ca.ench_courageous_offh_lvl 0
scoreboard players set @s ca.ench_courageous_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/courageous
scoreboard players operation @s ca.ench_courageous_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/courageous
scoreboard players operation @s ca.ench_courageous_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_main_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_offh_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_head_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_chest_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_legs_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_feet_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_body_lvl
scoreboard players operation @s ca.ench_courageous_lvl += @s ca.ench_courageous_saddle_lvl



scoreboard players set @s ca.ench_unseen_main_lvl 0
scoreboard players set @s ca.ench_unseen_offh_lvl 0
scoreboard players set @s ca.ench_unseen_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/unseen
scoreboard players operation @s ca.ench_unseen_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/unseen
scoreboard players operation @s ca.ench_unseen_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_main_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_offh_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_head_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_chest_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_legs_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_feet_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_body_lvl
scoreboard players operation @s ca.ench_unseen_lvl += @s ca.ench_unseen_saddle_lvl



scoreboard players set @s ca.ench_tenacity_main_lvl 0
scoreboard players set @s ca.ench_tenacity_offh_lvl 0
scoreboard players set @s ca.ench_tenacity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/tenacity
scoreboard players operation @s ca.ench_tenacity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/tenacity
scoreboard players operation @s ca.ench_tenacity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_main_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_offh_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_head_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_chest_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_legs_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_feet_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_body_lvl
scoreboard players operation @s ca.ench_tenacity_lvl += @s ca.ench_tenacity_saddle_lvl



scoreboard players set @s ca.ench_inertia_main_lvl 0
scoreboard players set @s ca.ench_inertia_offh_lvl 0
scoreboard players set @s ca.ench_inertia_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/inertia
scoreboard players operation @s ca.ench_inertia_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/inertia
scoreboard players operation @s ca.ench_inertia_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_main_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_offh_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_head_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_chest_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_legs_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_feet_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_body_lvl
scoreboard players operation @s ca.ench_inertia_lvl += @s ca.ench_inertia_saddle_lvl


execute if score @s ca.ench_inertia_lvl matches 1.. run tag @s remove ca.energized_calculated

scoreboard players set @s ca.ench_diversion_main_lvl 0
scoreboard players set @s ca.ench_diversion_offh_lvl 0
scoreboard players set @s ca.ench_diversion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/diversion
scoreboard players operation @s ca.ench_diversion_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/diversion
scoreboard players operation @s ca.ench_diversion_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_main_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_offh_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_head_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_chest_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_legs_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_feet_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_body_lvl
scoreboard players operation @s ca.ench_diversion_lvl += @s ca.ench_diversion_saddle_lvl



scoreboard players set @s ca.ench_gravity_main_lvl 0
scoreboard players set @s ca.ench_gravity_offh_lvl 0
scoreboard players set @s ca.ench_gravity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/gravity
scoreboard players operation @s ca.ench_gravity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/gravity
scoreboard players operation @s ca.ench_gravity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_main_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_offh_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_head_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_chest_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_legs_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_feet_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_body_lvl
scoreboard players operation @s ca.ench_gravity_lvl += @s ca.ench_gravity_saddle_lvl



scoreboard players set @s ca.ench_momentum_main_lvl 0
scoreboard players set @s ca.ench_momentum_offh_lvl 0
scoreboard players set @s ca.ench_momentum_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/momentum
scoreboard players operation @s ca.ench_momentum_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/momentum
scoreboard players operation @s ca.ench_momentum_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_main_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_offh_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_head_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_chest_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_legs_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_feet_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_body_lvl
scoreboard players operation @s ca.ench_momentum_lvl += @s ca.ench_momentum_saddle_lvl


execute if score @s ca.ench_momentum_lvl matches 1.. run tag @s remove ca.energized_calculated

scoreboard players set @s ca.ench_vengeance_main_lvl 0
scoreboard players set @s ca.ench_vengeance_offh_lvl 0
scoreboard players set @s ca.ench_vengeance_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/vengeance
scoreboard players operation @s ca.ench_vengeance_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/vengeance
scoreboard players operation @s ca.ench_vengeance_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_main_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_offh_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_head_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_chest_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_legs_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_feet_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_body_lvl
scoreboard players operation @s ca.ench_vengeance_lvl += @s ca.ench_vengeance_saddle_lvl



scoreboard players set @s ca.ench_surge_main_lvl 0
scoreboard players set @s ca.ench_surge_offh_lvl 0
scoreboard players set @s ca.ench_surge_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/surge
scoreboard players operation @s ca.ench_surge_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/surge
scoreboard players operation @s ca.ench_surge_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_main_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_offh_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_head_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_chest_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_legs_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_feet_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_body_lvl
scoreboard players operation @s ca.ench_surge_lvl += @s ca.ench_surge_saddle_lvl



scoreboard players set @s ca.ench_deadeye_main_lvl 0
scoreboard players set @s ca.ench_deadeye_offh_lvl 0
scoreboard players set @s ca.ench_deadeye_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/deadeye
scoreboard players operation @s ca.ench_deadeye_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/deadeye
scoreboard players operation @s ca.ench_deadeye_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_main_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_offh_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_head_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_chest_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_legs_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_feet_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_body_lvl
scoreboard players operation @s ca.ench_deadeye_lvl += @s ca.ench_deadeye_saddle_lvl



scoreboard players set @s ca.ench_trailblazer_main_lvl 0
scoreboard players set @s ca.ench_trailblazer_offh_lvl 0
scoreboard players set @s ca.ench_trailblazer_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/trailblazer
scoreboard players operation @s ca.ench_trailblazer_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/trailblazer
scoreboard players operation @s ca.ench_trailblazer_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_main_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_offh_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_head_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_chest_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_legs_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_feet_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_body_lvl
scoreboard players operation @s ca.ench_trailblazer_lvl += @s ca.ench_trailblazer_saddle_lvl



scoreboard players set @s ca.ench_starfall_main_lvl 0
scoreboard players set @s ca.ench_starfall_offh_lvl 0
scoreboard players set @s ca.ench_starfall_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/starfall
scoreboard players operation @s ca.ench_starfall_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/starfall
scoreboard players operation @s ca.ench_starfall_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_main_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_offh_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_head_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_chest_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_legs_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_feet_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_body_lvl
scoreboard players operation @s ca.ench_starfall_lvl += @s ca.ench_starfall_saddle_lvl



scoreboard players set @s ca.ench_orbit_main_lvl 0
scoreboard players set @s ca.ench_orbit_offh_lvl 0
scoreboard players set @s ca.ench_orbit_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/orbit
scoreboard players operation @s ca.ench_orbit_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/orbit
scoreboard players operation @s ca.ench_orbit_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_main_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_offh_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_head_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_chest_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_legs_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_feet_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_body_lvl
scoreboard players operation @s ca.ench_orbit_lvl += @s ca.ench_orbit_saddle_lvl



scoreboard players set @s ca.ench_storm_main_lvl 0
scoreboard players set @s ca.ench_storm_offh_lvl 0
scoreboard players set @s ca.ench_storm_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/storm
scoreboard players operation @s ca.ench_storm_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/storm
scoreboard players operation @s ca.ench_storm_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_main_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_offh_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_head_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_chest_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_legs_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_feet_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_body_lvl
scoreboard players operation @s ca.ench_storm_lvl += @s ca.ench_storm_saddle_lvl


execute if score @s ca.ench_storm_lvl matches 1.. run tag @s remove ca.energized_calculated

scoreboard players set @s ca.ench_induction_main_lvl 0
scoreboard players set @s ca.ench_induction_offh_lvl 0
scoreboard players set @s ca.ench_induction_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/induction
scoreboard players operation @s ca.ench_induction_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/induction
scoreboard players operation @s ca.ench_induction_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_main_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_offh_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_head_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_chest_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_legs_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_feet_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_body_lvl
scoreboard players operation @s ca.ench_induction_lvl += @s ca.ench_induction_saddle_lvl


execute if score @s ca.ench_induction_lvl matches 1.. run tag @s remove ca.energized_calculated

scoreboard players set @s ca.ench_aberration_main_lvl 0
scoreboard players set @s ca.ench_aberration_offh_lvl 0
scoreboard players set @s ca.ench_aberration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/aberration
scoreboard players operation @s ca.ench_aberration_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/aberration
scoreboard players operation @s ca.ench_aberration_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_main_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_offh_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_head_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_chest_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_legs_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_feet_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_body_lvl
scoreboard players operation @s ca.ench_aberration_lvl += @s ca.ench_aberration_saddle_lvl



scoreboard players set @s ca.ench_quake_main_lvl 0
scoreboard players set @s ca.ench_quake_offh_lvl 0
scoreboard players set @s ca.ench_quake_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/quake
scoreboard players operation @s ca.ench_quake_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/quake
scoreboard players operation @s ca.ench_quake_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_main_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_offh_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_head_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_chest_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_legs_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_feet_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_body_lvl
scoreboard players operation @s ca.ench_quake_lvl += @s ca.ench_quake_saddle_lvl



scoreboard players set @s ca.ench_eruption_main_lvl 0
scoreboard players set @s ca.ench_eruption_offh_lvl 0
scoreboard players set @s ca.ench_eruption_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/eruption
scoreboard players operation @s ca.ench_eruption_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/eruption
scoreboard players operation @s ca.ench_eruption_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_main_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_offh_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_head_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_chest_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_legs_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_feet_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_body_lvl
scoreboard players operation @s ca.ench_eruption_lvl += @s ca.ench_eruption_saddle_lvl



scoreboard players set @s ca.ench_soulfire_main_lvl 0
scoreboard players set @s ca.ench_soulfire_offh_lvl 0
scoreboard players set @s ca.ench_soulfire_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulfire
scoreboard players operation @s ca.ench_soulfire_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulfire
scoreboard players operation @s ca.ench_soulfire_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_main_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_offh_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_head_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_chest_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_legs_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_feet_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_body_lvl
scoreboard players operation @s ca.ench_soulfire_lvl += @s ca.ench_soulfire_saddle_lvl



scoreboard players set @s ca.ench_drilling_main_lvl 0
scoreboard players set @s ca.ench_drilling_offh_lvl 0
scoreboard players set @s ca.ench_drilling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_main_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_offh_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_head_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_chest_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_legs_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_feet_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_body_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_saddle_lvl



scoreboard players set @s ca.ench_excavator_main_lvl 0
scoreboard players set @s ca.ench_excavator_offh_lvl 0
scoreboard players set @s ca.ench_excavator_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:tool/excavator
scoreboard players operation @s ca.ench_excavator_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:tool/excavator
scoreboard players operation @s ca.ench_excavator_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_main_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_offh_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_head_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_chest_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_legs_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_feet_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_body_lvl
scoreboard players operation @s ca.ench_excavator_lvl += @s ca.ench_excavator_saddle_lvl



scoreboard players set @s ca.ench_multitool_main_lvl 0
scoreboard players set @s ca.ench_multitool_offh_lvl 0
scoreboard players set @s ca.ench_multitool_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:tool/multitool
scoreboard players operation @s ca.ench_multitool_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:tool/multitool
scoreboard players operation @s ca.ench_multitool_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_main_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_offh_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_head_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_chest_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_legs_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_feet_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_body_lvl
scoreboard players operation @s ca.ench_multitool_lvl += @s ca.ench_multitool_saddle_lvl



scoreboard players set @s ca.ench_lightborn_main_lvl 0
scoreboard players set @s ca.ench_lightborn_offh_lvl 0
scoreboard players set @s ca.ench_lightborn_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:tool/lightborn
scoreboard players operation @s ca.ench_lightborn_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:tool/lightborn
scoreboard players operation @s ca.ench_lightborn_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_main_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_offh_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_head_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_chest_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_legs_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_feet_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_body_lvl
scoreboard players operation @s ca.ench_lightborn_lvl += @s ca.ench_lightborn_saddle_lvl



scoreboard players set @s ca.ench_hex_eater_main_lvl 0
scoreboard players set @s ca.ench_hex_eater_offh_lvl 0
scoreboard players set @s ca.ench_hex_eater_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hex_eater
scoreboard players operation @s ca.ench_hex_eater_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hex_eater
scoreboard players operation @s ca.ench_hex_eater_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_main_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_offh_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_head_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_chest_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_legs_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_feet_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_body_lvl
scoreboard players operation @s ca.ench_hex_eater_lvl += @s ca.ench_hex_eater_saddle_lvl



scoreboard players set @s ca.ench_duelist_main_lvl 0
scoreboard players set @s ca.ench_duelist_offh_lvl 0
scoreboard players set @s ca.ench_duelist_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/duelist
scoreboard players operation @s ca.ench_duelist_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/duelist
scoreboard players operation @s ca.ench_duelist_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_main_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_offh_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_head_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_chest_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_legs_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_feet_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_body_lvl
scoreboard players operation @s ca.ench_duelist_lvl += @s ca.ench_duelist_saddle_lvl



scoreboard players set @s ca.ench_hunter_main_lvl 0
scoreboard players set @s ca.ench_hunter_offh_lvl 0
scoreboard players set @s ca.ench_hunter_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hunter
scoreboard players operation @s ca.ench_hunter_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/hunter
scoreboard players operation @s ca.ench_hunter_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_main_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_offh_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_head_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_chest_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_legs_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_feet_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_body_lvl
scoreboard players operation @s ca.ench_hunter_lvl += @s ca.ench_hunter_saddle_lvl



scoreboard players set @s ca.ench_focus_main_lvl 0
scoreboard players set @s ca.ench_focus_offh_lvl 0
scoreboard players set @s ca.ench_focus_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/focus
scoreboard players operation @s ca.ench_focus_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/focus
scoreboard players operation @s ca.ench_focus_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_main_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_offh_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_head_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_chest_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_legs_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_feet_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_body_lvl
scoreboard players operation @s ca.ench_focus_lvl += @s ca.ench_focus_saddle_lvl



scoreboard players set @s ca.ench_first_strike_main_lvl 0
scoreboard players set @s ca.ench_first_strike_offh_lvl 0
scoreboard players set @s ca.ench_first_strike_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/first_strike
scoreboard players operation @s ca.ench_first_strike_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/first_strike
scoreboard players operation @s ca.ench_first_strike_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_main_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_offh_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_head_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_chest_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_legs_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_feet_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_body_lvl
scoreboard players operation @s ca.ench_first_strike_lvl += @s ca.ench_first_strike_saddle_lvl



scoreboard players set @s ca.ench_follow_up_main_lvl 0
scoreboard players set @s ca.ench_follow_up_offh_lvl 0
scoreboard players set @s ca.ench_follow_up_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/follow_up
scoreboard players operation @s ca.ench_follow_up_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/follow_up
scoreboard players operation @s ca.ench_follow_up_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_main_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_offh_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_head_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_chest_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_legs_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_feet_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_body_lvl
scoreboard players operation @s ca.ench_follow_up_lvl += @s ca.ench_follow_up_saddle_lvl



scoreboard players set @s ca.ench_concentration_main_lvl 0
scoreboard players set @s ca.ench_concentration_offh_lvl 0
scoreboard players set @s ca.ench_concentration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/concentration
scoreboard players operation @s ca.ench_concentration_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/concentration
scoreboard players operation @s ca.ench_concentration_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_main_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_offh_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_head_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_chest_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_legs_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_feet_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_body_lvl
scoreboard players operation @s ca.ench_concentration_lvl += @s ca.ench_concentration_saddle_lvl



scoreboard players set @s ca.ench_chaotic_main_lvl 0
scoreboard players set @s ca.ench_chaotic_offh_lvl 0
scoreboard players set @s ca.ench_chaotic_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/chaotic
scoreboard players operation @s ca.ench_chaotic_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/general/chaotic
scoreboard players operation @s ca.ench_chaotic_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_main_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_offh_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_head_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_chest_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_legs_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_feet_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_body_lvl
scoreboard players operation @s ca.ench_chaotic_lvl += @s ca.ench_chaotic_saddle_lvl



scoreboard players set @s ca.ench_rushdown_main_lvl 0
scoreboard players set @s ca.ench_rushdown_offh_lvl 0
scoreboard players set @s ca.ench_rushdown_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/rushdown
scoreboard players operation @s ca.ench_rushdown_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/rushdown
scoreboard players operation @s ca.ench_rushdown_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_main_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_offh_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_head_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_chest_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_legs_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_feet_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_body_lvl
scoreboard players operation @s ca.ench_rushdown_lvl += @s ca.ench_rushdown_saddle_lvl



scoreboard players set @s ca.ench_leverage_main_lvl 0
scoreboard players set @s ca.ench_leverage_offh_lvl 0
scoreboard players set @s ca.ench_leverage_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/leverage
scoreboard players operation @s ca.ench_leverage_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/melee/leverage
scoreboard players operation @s ca.ench_leverage_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_main_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_offh_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_head_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_chest_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_legs_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_feet_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_body_lvl
scoreboard players operation @s ca.ench_leverage_lvl += @s ca.ench_leverage_saddle_lvl



scoreboard players set @s ca.ench_overcharge_main_lvl 0
scoreboard players set @s ca.ench_overcharge_offh_lvl 0
scoreboard players set @s ca.ench_overcharge_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/overcharge
scoreboard players operation @s ca.ench_overcharge_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/overcharge
scoreboard players operation @s ca.ench_overcharge_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_main_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_offh_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_head_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_chest_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_legs_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_feet_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_body_lvl
scoreboard players operation @s ca.ench_overcharge_lvl += @s ca.ench_overcharge_saddle_lvl



scoreboard players set @s ca.ench_point_blank_main_lvl 0
scoreboard players set @s ca.ench_point_blank_offh_lvl 0
scoreboard players set @s ca.ench_point_blank_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/point_blank
scoreboard players operation @s ca.ench_point_blank_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/point_blank
scoreboard players operation @s ca.ench_point_blank_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_main_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_offh_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_head_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_chest_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_legs_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_feet_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_body_lvl
scoreboard players operation @s ca.ench_point_blank_lvl += @s ca.ench_point_blank_saddle_lvl



scoreboard players set @s ca.ench_sharpshot_main_lvl 0
scoreboard players set @s ca.ench_sharpshot_offh_lvl 0
scoreboard players set @s ca.ench_sharpshot_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/sharpshot
scoreboard players operation @s ca.ench_sharpshot_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/damage/ranged/sharpshot
scoreboard players operation @s ca.ench_sharpshot_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_main_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_offh_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_head_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_chest_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_legs_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_feet_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_body_lvl
scoreboard players operation @s ca.ench_sharpshot_lvl += @s ca.ench_sharpshot_saddle_lvl



scoreboard players set @s ca.ench_recoil_main_lvl 0
scoreboard players set @s ca.ench_recoil_offh_lvl 0
scoreboard players set @s ca.ench_recoil_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/recoil
scoreboard players operation @s ca.ench_recoil_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/recoil
scoreboard players operation @s ca.ench_recoil_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_main_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_offh_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_head_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_chest_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_legs_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_feet_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_body_lvl
scoreboard players operation @s ca.ench_recoil_lvl += @s ca.ench_recoil_saddle_lvl



scoreboard players set @s ca.ench_explosive_main_lvl 0
scoreboard players set @s ca.ench_explosive_offh_lvl 0
scoreboard players set @s ca.ench_explosive_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/explosive
scoreboard players operation @s ca.ench_explosive_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/explosive
scoreboard players operation @s ca.ench_explosive_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_main_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_offh_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_head_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_chest_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_legs_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_feet_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_body_lvl
scoreboard players operation @s ca.ench_explosive_lvl += @s ca.ench_explosive_saddle_lvl



scoreboard players set @s ca.ench_pulling_main_lvl 0
scoreboard players set @s ca.ench_pulling_offh_lvl 0
scoreboard players set @s ca.ench_pulling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_main_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_offh_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_head_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_chest_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_legs_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_feet_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_body_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_saddle_lvl



scoreboard players set @s ca.ench_repulsion_main_lvl 0
scoreboard players set @s ca.ench_repulsion_offh_lvl 0
scoreboard players set @s ca.ench_repulsion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/repulsion
scoreboard players operation @s ca.ench_repulsion_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/repulsion
scoreboard players operation @s ca.ench_repulsion_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_main_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_offh_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_head_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_chest_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_legs_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_feet_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_body_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_saddle_lvl



scoreboard players set @s ca.ench_cleaving_main_lvl 0
scoreboard players set @s ca.ench_cleaving_offh_lvl 0
scoreboard players set @s ca.ench_cleaving_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/cleaving
scoreboard players operation @s ca.ench_cleaving_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/cleaving
scoreboard players operation @s ca.ench_cleaving_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_main_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_offh_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_head_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_chest_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_legs_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_feet_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_body_lvl
scoreboard players operation @s ca.ench_cleaving_lvl += @s ca.ench_cleaving_saddle_lvl



scoreboard players set @s ca.ench_slamming_main_lvl 0
scoreboard players set @s ca.ench_slamming_offh_lvl 0
scoreboard players set @s ca.ench_slamming_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/slamming
scoreboard players operation @s ca.ench_slamming_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/slamming
scoreboard players operation @s ca.ench_slamming_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_main_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_offh_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_head_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_chest_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_legs_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_feet_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_body_lvl
scoreboard players operation @s ca.ench_slamming_lvl += @s ca.ench_slamming_saddle_lvl



scoreboard players set @s ca.ench_thrusting_main_lvl 0
scoreboard players set @s ca.ench_thrusting_offh_lvl 0
scoreboard players set @s ca.ench_thrusting_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/thrusting
scoreboard players operation @s ca.ench_thrusting_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/thrusting
scoreboard players operation @s ca.ench_thrusting_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_main_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_offh_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_head_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_chest_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_legs_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_feet_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_body_lvl
scoreboard players operation @s ca.ench_thrusting_lvl += @s ca.ench_thrusting_saddle_lvl



scoreboard players set @s ca.ench_quick_strike_main_lvl 0
scoreboard players set @s ca.ench_quick_strike_offh_lvl 0
scoreboard players set @s ca.ench_quick_strike_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/quick_strike
scoreboard players operation @s ca.ench_quick_strike_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/quick_strike
scoreboard players operation @s ca.ench_quick_strike_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_main_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_offh_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_head_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_chest_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_legs_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_feet_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_body_lvl
scoreboard players operation @s ca.ench_quick_strike_lvl += @s ca.ench_quick_strike_saddle_lvl



scoreboard players set @s ca.ench_riposte_main_lvl 0
scoreboard players set @s ca.ench_riposte_offh_lvl 0
scoreboard players set @s ca.ench_riposte_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/riposte
scoreboard players operation @s ca.ench_riposte_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/riposte
scoreboard players operation @s ca.ench_riposte_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_main_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_offh_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_head_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_chest_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_legs_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_feet_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_body_lvl
scoreboard players operation @s ca.ench_riposte_lvl += @s ca.ench_riposte_saddle_lvl



scoreboard players set @s ca.ench_lunging_main_lvl 0
scoreboard players set @s ca.ench_lunging_offh_lvl 0
scoreboard players set @s ca.ench_lunging_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/lunging
scoreboard players operation @s ca.ench_lunging_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/lunging
scoreboard players operation @s ca.ench_lunging_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_main_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_offh_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_head_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_chest_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_legs_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_feet_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_body_lvl
scoreboard players operation @s ca.ench_lunging_lvl += @s ca.ench_lunging_saddle_lvl



scoreboard players set @s ca.ench_ambushing_main_lvl 0
scoreboard players set @s ca.ench_ambushing_offh_lvl 0
scoreboard players set @s ca.ench_ambushing_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/ambushing
scoreboard players operation @s ca.ench_ambushing_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/ambushing
scoreboard players operation @s ca.ench_ambushing_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_main_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_offh_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_head_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_chest_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_legs_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_feet_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_body_lvl
scoreboard players operation @s ca.ench_ambushing_lvl += @s ca.ench_ambushing_saddle_lvl



scoreboard players set @s ca.ench_throwable_main_lvl 0
scoreboard players set @s ca.ench_throwable_offh_lvl 0
scoreboard players set @s ca.ench_throwable_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/throwable
scoreboard players operation @s ca.ench_throwable_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/melee/throwable
scoreboard players operation @s ca.ench_throwable_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_main_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_offh_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_head_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_chest_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_legs_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_feet_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_body_lvl
scoreboard players operation @s ca.ench_throwable_lvl += @s ca.ench_throwable_saddle_lvl



scoreboard players set @s ca.ench_correction_main_lvl 0
scoreboard players set @s ca.ench_correction_offh_lvl 0
scoreboard players set @s ca.ench_correction_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/correction
scoreboard players operation @s ca.ench_correction_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/correction
scoreboard players operation @s ca.ench_correction_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_main_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_offh_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_head_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_chest_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_legs_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_feet_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_body_lvl
scoreboard players operation @s ca.ench_correction_lvl += @s ca.ench_correction_saddle_lvl



scoreboard players set @s ca.ench_ricochet_main_lvl 0
scoreboard players set @s ca.ench_ricochet_offh_lvl 0
scoreboard players set @s ca.ench_ricochet_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ricochet
scoreboard players operation @s ca.ench_ricochet_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ricochet
scoreboard players operation @s ca.ench_ricochet_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_main_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_offh_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_head_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_chest_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_legs_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_feet_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_body_lvl
scoreboard players operation @s ca.ench_ricochet_lvl += @s ca.ench_ricochet_saddle_lvl



scoreboard players set @s ca.ench_barbed_main_lvl 0
scoreboard players set @s ca.ench_barbed_offh_lvl 0
scoreboard players set @s ca.ench_barbed_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barbed
scoreboard players operation @s ca.ench_barbed_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barbed
scoreboard players operation @s ca.ench_barbed_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_main_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_offh_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_head_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_chest_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_legs_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_feet_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_body_lvl
scoreboard players operation @s ca.ench_barbed_lvl += @s ca.ench_barbed_saddle_lvl



scoreboard players set @s ca.ench_ripper_main_lvl 0
scoreboard players set @s ca.ench_ripper_offh_lvl 0
scoreboard players set @s ca.ench_ripper_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ripper
scoreboard players operation @s ca.ench_ripper_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/ripper
scoreboard players operation @s ca.ench_ripper_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_main_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_offh_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_head_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_chest_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_legs_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_feet_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_body_lvl
scoreboard players operation @s ca.ench_ripper_lvl += @s ca.ench_ripper_saddle_lvl



scoreboard players set @s ca.ench_shrapnel_main_lvl 0
scoreboard players set @s ca.ench_shrapnel_offh_lvl 0
scoreboard players set @s ca.ench_shrapnel_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/shrapnel
scoreboard players operation @s ca.ench_shrapnel_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/shrapnel
scoreboard players operation @s ca.ench_shrapnel_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_main_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_offh_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_head_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_chest_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_legs_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_feet_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_body_lvl
scoreboard players operation @s ca.ench_shrapnel_lvl += @s ca.ench_shrapnel_saddle_lvl



scoreboard players set @s ca.ench_fleetfoot_main_lvl 0
scoreboard players set @s ca.ench_fleetfoot_offh_lvl 0
scoreboard players set @s ca.ench_fleetfoot_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/fleetfoot
scoreboard players operation @s ca.ench_fleetfoot_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/fleetfoot
scoreboard players operation @s ca.ench_fleetfoot_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_main_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_offh_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_head_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_chest_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_legs_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_feet_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_body_lvl
scoreboard players operation @s ca.ench_fleetfoot_lvl += @s ca.ench_fleetfoot_saddle_lvl



scoreboard players set @s ca.ench_grappling_main_lvl 0
scoreboard players set @s ca.ench_grappling_offh_lvl 0
scoreboard players set @s ca.ench_grappling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/grappling
scoreboard players operation @s ca.ench_grappling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/grappling
scoreboard players operation @s ca.ench_grappling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_main_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_offh_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_head_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_chest_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_legs_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_feet_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_body_lvl
scoreboard players operation @s ca.ench_grappling_lvl += @s ca.ench_grappling_saddle_lvl



scoreboard players set @s ca.ench_barrage_main_lvl 0
scoreboard players set @s ca.ench_barrage_offh_lvl 0
scoreboard players set @s ca.ench_barrage_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barrage
scoreboard players operation @s ca.ench_barrage_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/barrage
scoreboard players operation @s ca.ench_barrage_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_main_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_offh_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_head_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_chest_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_legs_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_feet_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_body_lvl
scoreboard players operation @s ca.ench_barrage_lvl += @s ca.ench_barrage_saddle_lvl



scoreboard players set @s ca.ench_collapse_main_lvl 0
scoreboard players set @s ca.ench_collapse_offh_lvl 0
scoreboard players set @s ca.ench_collapse_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/collapse
scoreboard players operation @s ca.ench_collapse_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/collapse
scoreboard players operation @s ca.ench_collapse_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_main_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_offh_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_head_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_chest_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_legs_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_feet_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_body_lvl
scoreboard players operation @s ca.ench_collapse_lvl += @s ca.ench_collapse_saddle_lvl



scoreboard players set @s ca.ench_repeating_main_lvl 0
scoreboard players set @s ca.ench_repeating_offh_lvl 0
scoreboard players set @s ca.ench_repeating_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players operation @s ca.ench_repeating_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players operation @s ca.ench_repeating_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_main_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_offh_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_head_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_chest_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_legs_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_feet_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_body_lvl
scoreboard players operation @s ca.ench_repeating_lvl += @s ca.ench_repeating_saddle_lvl



scoreboard players set @s ca.ench_crumbling_main_lvl 0
scoreboard players set @s ca.ench_crumbling_offh_lvl 0
scoreboard players set @s ca.ench_crumbling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/crumbling
scoreboard players operation @s ca.ench_crumbling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/crumbling
scoreboard players operation @s ca.ench_crumbling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_main_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_offh_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_head_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_chest_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_legs_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_feet_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_body_lvl
scoreboard players operation @s ca.ench_crumbling_lvl += @s ca.ench_crumbling_saddle_lvl



scoreboard players set @s ca.ench_shattering_main_lvl 0
scoreboard players set @s ca.ench_shattering_offh_lvl 0
scoreboard players set @s ca.ench_shattering_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/shattering
scoreboard players operation @s ca.ench_shattering_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/shattering
scoreboard players operation @s ca.ench_shattering_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_main_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_offh_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_head_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_chest_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_legs_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_feet_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_body_lvl
scoreboard players operation @s ca.ench_shattering_lvl += @s ca.ench_shattering_saddle_lvl



scoreboard players set @s ca.ench_haunting_main_lvl 0
scoreboard players set @s ca.ench_haunting_offh_lvl 0
scoreboard players set @s ca.ench_haunting_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting
scoreboard players operation @s ca.ench_haunting_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting
scoreboard players operation @s ca.ench_haunting_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_main_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_offh_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_head_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_chest_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_legs_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_feet_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_body_lvl
scoreboard players operation @s ca.ench_haunting_lvl += @s ca.ench_haunting_saddle_lvl



scoreboard players set @s ca.ench_corruption_main_lvl 0
scoreboard players set @s ca.ench_corruption_offh_lvl 0
scoreboard players set @s ca.ench_corruption_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/corruption
scoreboard players operation @s ca.ench_corruption_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/corruption
scoreboard players operation @s ca.ench_corruption_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_main_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_offh_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_head_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_chest_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_legs_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_feet_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_body_lvl
scoreboard players operation @s ca.ench_corruption_lvl += @s ca.ench_corruption_saddle_lvl



scoreboard players set @s ca.ench_crippling_main_lvl 0
scoreboard players set @s ca.ench_crippling_offh_lvl 0
scoreboard players set @s ca.ench_crippling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/crippling
scoreboard players operation @s ca.ench_crippling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/crippling
scoreboard players operation @s ca.ench_crippling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_main_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_offh_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_head_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_chest_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_legs_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_feet_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_body_lvl
scoreboard players operation @s ca.ench_crippling_lvl += @s ca.ench_crippling_saddle_lvl



scoreboard players set @s ca.ench_pride_main_lvl 0
scoreboard players set @s ca.ench_pride_offh_lvl 0
scoreboard players set @s ca.ench_pride_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/pride
scoreboard players operation @s ca.ench_pride_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/pride
scoreboard players operation @s ca.ench_pride_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_main_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_offh_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_head_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_chest_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_legs_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_feet_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_body_lvl
scoreboard players operation @s ca.ench_pride_lvl += @s ca.ench_pride_saddle_lvl

execute if score @s ca.ench_pride_lvl matches 1.. run scoreboard players set @s ca.ench_pride_check 1



scoreboard players set @s ca.ench_two_handed_main_lvl 0
scoreboard players set @s ca.ench_two_handed_offh_lvl 0
scoreboard players set @s ca.ench_two_handed_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/two_handed
scoreboard players operation @s ca.ench_two_handed_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/two_handed
scoreboard players operation @s ca.ench_two_handed_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_main_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_offh_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_head_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_chest_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_legs_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_feet_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_body_lvl
scoreboard players operation @s ca.ench_two_handed_lvl += @s ca.ench_two_handed_saddle_lvl

execute if score @s ca.ench_two_handed_lvl matches 1.. run scoreboard players set @s ca.ench_two_handed_check 1


scoreboard players set @s ca.ench_instability_main_lvl 0
scoreboard players set @s ca.ench_instability_offh_lvl 0
scoreboard players set @s ca.ench_instability_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/instability
scoreboard players operation @s ca.ench_instability_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/instability
scoreboard players operation @s ca.ench_instability_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_main_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_offh_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_head_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_chest_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_legs_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_feet_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_body_lvl
scoreboard players operation @s ca.ench_instability_lvl += @s ca.ench_instability_saddle_lvl



scoreboard players set @s ca.ench_melee_fragility_main_lvl 0
scoreboard players set @s ca.ench_melee_fragility_offh_lvl 0
scoreboard players set @s ca.ench_melee_fragility_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/melee_fragility
scoreboard players operation @s ca.ench_melee_fragility_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/melee_fragility
scoreboard players operation @s ca.ench_melee_fragility_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_main_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_offh_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_head_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_chest_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_legs_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_feet_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_body_lvl
scoreboard players operation @s ca.ench_melee_fragility_lvl += @s ca.ench_melee_fragility_saddle_lvl



scoreboard players set @s ca.ench_projectile_fragility_main_lvl 0
scoreboard players set @s ca.ench_projectile_fragility_offh_lvl 0
scoreboard players set @s ca.ench_projectile_fragility_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/projectile_fragility
scoreboard players operation @s ca.ench_projectile_fragility_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/projectile_fragility
scoreboard players operation @s ca.ench_projectile_fragility_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_main_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_offh_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_head_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_chest_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_legs_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_feet_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_body_lvl
scoreboard players operation @s ca.ench_projectile_fragility_lvl += @s ca.ench_projectile_fragility_saddle_lvl



scoreboard players set @s ca.ench_clumsiness_main_lvl 0
scoreboard players set @s ca.ench_clumsiness_offh_lvl 0
scoreboard players set @s ca.ench_clumsiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/clumsiness
scoreboard players operation @s ca.ench_clumsiness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/clumsiness
scoreboard players operation @s ca.ench_clumsiness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_main_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_offh_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_head_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_chest_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_legs_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_feet_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_body_lvl
scoreboard players operation @s ca.ench_clumsiness_lvl += @s ca.ench_clumsiness_saddle_lvl



scoreboard players set @s ca.ench_irreparability_main_lvl 0
scoreboard players set @s ca.ench_irreparability_offh_lvl 0
scoreboard players set @s ca.ench_irreparability_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/irreparability
scoreboard players operation @s ca.ench_irreparability_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/irreparability
scoreboard players operation @s ca.ench_irreparability_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_main_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_offh_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_head_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_chest_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_legs_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_feet_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_body_lvl
scoreboard players operation @s ca.ench_irreparability_lvl += @s ca.ench_irreparability_saddle_lvl



scoreboard players set @s ca.ench_encumbering_main_lvl 0
scoreboard players set @s ca.ench_encumbering_offh_lvl 0
scoreboard players set @s ca.ench_encumbering_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/encumbering
scoreboard players operation @s ca.ench_encumbering_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/encumbering
scoreboard players operation @s ca.ench_encumbering_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_main_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_offh_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_head_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_chest_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_legs_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_feet_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_body_lvl
scoreboard players operation @s ca.ench_encumbering_lvl += @s ca.ench_encumbering_saddle_lvl



scoreboard players set @s ca.ench_regret_main_lvl 0
scoreboard players set @s ca.ench_regret_offh_lvl 0
scoreboard players set @s ca.ench_regret_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/regret
scoreboard players operation @s ca.ench_regret_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/regret
scoreboard players operation @s ca.ench_regret_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_main_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_offh_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_head_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_chest_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_legs_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_feet_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_body_lvl
scoreboard players operation @s ca.ench_regret_lvl += @s ca.ench_regret_saddle_lvl



scoreboard players set @s ca.ench_gluttony_main_lvl 0
scoreboard players set @s ca.ench_gluttony_offh_lvl 0
scoreboard players set @s ca.ench_gluttony_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/gluttony
scoreboard players operation @s ca.ench_gluttony_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/gluttony
scoreboard players operation @s ca.ench_gluttony_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_main_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_offh_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_head_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_chest_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_legs_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_feet_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_body_lvl
scoreboard players operation @s ca.ench_gluttony_lvl += @s ca.ench_gluttony_saddle_lvl



scoreboard players set @s ca.ench_heaviness_main_lvl 0
scoreboard players set @s ca.ench_heaviness_offh_lvl 0
scoreboard players set @s ca.ench_heaviness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/heaviness
scoreboard players operation @s ca.ench_heaviness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/heaviness
scoreboard players operation @s ca.ench_heaviness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_main_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_offh_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_head_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_chest_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_legs_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_feet_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_body_lvl
scoreboard players operation @s ca.ench_heaviness_lvl += @s ca.ench_heaviness_saddle_lvl



scoreboard players set @s ca.ench_jamming_main_lvl 0
scoreboard players set @s ca.ench_jamming_offh_lvl 0
scoreboard players set @s ca.ench_jamming_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:curse/jamming
scoreboard players operation @s ca.ench_jamming_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:curse/jamming
scoreboard players operation @s ca.ench_jamming_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_main_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_offh_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_head_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_chest_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_legs_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_feet_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_body_lvl
scoreboard players operation @s ca.ench_jamming_lvl += @s ca.ench_jamming_saddle_lvl



scoreboard players set @s ca.ench_thorns_main_lvl 0
scoreboard players set @s ca.ench_thorns_offh_lvl 0
scoreboard players set @s ca.ench_thorns_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_main_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_offh_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_head_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_chest_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_legs_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_feet_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_body_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_saddle_lvl



scoreboard players set @s ca.ench_quick_charge_main_lvl 0
scoreboard players set @s ca.ench_quick_charge_offh_lvl 0
scoreboard players set @s ca.ench_quick_charge_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:quick_charge
scoreboard players operation @s ca.ench_quick_charge_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:quick_charge
scoreboard players operation @s ca.ench_quick_charge_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_main_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_offh_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_head_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_chest_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_legs_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_feet_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_body_lvl
scoreboard players operation @s ca.ench_quick_charge_lvl += @s ca.ench_quick_charge_saddle_lvl



scoreboard players set @s ca.ench_multishot_main_lvl 0
scoreboard players set @s ca.ench_multishot_offh_lvl 0
scoreboard players set @s ca.ench_multishot_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:multishot
scoreboard players operation @s ca.ench_multishot_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:multishot
scoreboard players operation @s ca.ench_multishot_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_main_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_offh_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_head_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_chest_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_legs_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_feet_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_body_lvl
scoreboard players operation @s ca.ench_multishot_lvl += @s ca.ench_multishot_saddle_lvl



scoreboard players set @s ca.ench_infinity_main_lvl 0
scoreboard players set @s ca.ench_infinity_offh_lvl 0
scoreboard players set @s ca.ench_infinity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:infinity
scoreboard players operation @s ca.ench_infinity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:infinity
scoreboard players operation @s ca.ench_infinity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_main_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_offh_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_head_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_chest_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_legs_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_feet_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_body_lvl
scoreboard players operation @s ca.ench_infinity_lvl += @s ca.ench_infinity_saddle_lvl



scoreboard players set @s ca.ench_knockback_main_lvl 0
scoreboard players set @s ca.ench_knockback_offh_lvl 0
scoreboard players set @s ca.ench_knockback_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:knockback
scoreboard players operation @s ca.ench_knockback_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:knockback
scoreboard players operation @s ca.ench_knockback_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_main_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_offh_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_head_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_chest_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_legs_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_feet_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_body_lvl
scoreboard players operation @s ca.ench_knockback_lvl += @s ca.ench_knockback_saddle_lvl



scoreboard players set @s ca.ench_flame_main_lvl 0
scoreboard players set @s ca.ench_flame_offh_lvl 0
scoreboard players set @s ca.ench_flame_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:flame
scoreboard players operation @s ca.ench_flame_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:flame
scoreboard players operation @s ca.ench_flame_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_main_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_offh_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_head_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_chest_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_legs_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_feet_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_body_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_saddle_lvl



scoreboard players set @s ca.ench_power_main_lvl 0
scoreboard players set @s ca.ench_power_offh_lvl 0
scoreboard players set @s ca.ench_power_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:power
scoreboard players operation @s ca.ench_power_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:power
scoreboard players operation @s ca.ench_power_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_main_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_offh_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_head_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_chest_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_legs_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_feet_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_body_lvl
scoreboard players operation @s ca.ench_power_lvl += @s ca.ench_power_saddle_lvl



scoreboard players set @s ca.ench_punch_main_lvl 0
scoreboard players set @s ca.ench_punch_offh_lvl 0
scoreboard players set @s ca.ench_punch_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_main_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_offh_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_head_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_chest_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_legs_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_feet_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_body_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_saddle_lvl


