
scoreboard players set @s ca.ench_celerity_main_lvl 0
scoreboard players set @s ca.ench_celerity_offh_lvl 0
scoreboard players set @s ca.ench_celerity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/celerity
scoreboard players operation @s ca.ench_celerity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/celerity
scoreboard players operation @s ca.ench_celerity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_main_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_offh_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_head_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_chest_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_legs_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_feet_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_body_lvl
scoreboard players operation @s ca.ench_celerity_lvl += @s ca.ench_celerity_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_dexterity_main_lvl 0
scoreboard players set @s ca.ench_dexterity_offh_lvl 0
scoreboard players set @s ca.ench_dexterity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/dexterity
scoreboard players operation @s ca.ench_dexterity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/dexterity
scoreboard players operation @s ca.ench_dexterity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_main_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_offh_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_head_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_chest_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_legs_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_feet_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_body_lvl
scoreboard players operation @s ca.ench_dexterity_lvl += @s ca.ench_dexterity_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_finesse_main_lvl 0
scoreboard players set @s ca.ench_finesse_offh_lvl 0
scoreboard players set @s ca.ench_finesse_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_main_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_offh_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_head_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_chest_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_legs_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_feet_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_body_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_immovable_main_lvl 0
scoreboard players set @s ca.ench_immovable_offh_lvl 0
scoreboard players set @s ca.ench_immovable_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/immovable
scoreboard players operation @s ca.ench_immovable_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/immovable
scoreboard players operation @s ca.ench_immovable_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_main_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_offh_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_head_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_chest_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_legs_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_feet_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_body_lvl
scoreboard players operation @s ca.ench_immovable_lvl += @s ca.ench_immovable_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_vitality_main_lvl 0
scoreboard players set @s ca.ench_vitality_offh_lvl 0
scoreboard players set @s ca.ench_vitality_lvl 0

#scoreboard players set $ench ca.ench_var 0
#execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/vitality
#scoreboard players operation @s ca.ench_vitality_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/vitality
scoreboard players operation @s ca.ench_vitality_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_main_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_offh_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_head_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_chest_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_legs_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_feet_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_body_lvl
scoreboard players operation @s ca.ench_vitality_lvl += @s ca.ench_vitality_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_agility_main_lvl 0
scoreboard players set @s ca.ench_agility_offh_lvl 0
scoreboard players set @s ca.ench_agility_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/agility
scoreboard players operation @s ca.ench_agility_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/agility
scoreboard players operation @s ca.ench_agility_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_main_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_offh_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_head_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_chest_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_legs_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_feet_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_body_lvl
scoreboard players operation @s ca.ench_agility_lvl += @s ca.ench_agility_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_extended_main_lvl 0
scoreboard players set @s ca.ench_extended_offh_lvl 0
scoreboard players set @s ca.ench_extended_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/extended
scoreboard players operation @s ca.ench_extended_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/extended
scoreboard players operation @s ca.ench_extended_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_main_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_offh_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_head_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_chest_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_legs_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_feet_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_body_lvl
scoreboard players operation @s ca.ench_extended_lvl += @s ca.ench_extended_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_handling_main_lvl 0
scoreboard players set @s ca.ench_handling_offh_lvl 0
scoreboard players set @s ca.ench_handling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/handling
scoreboard players operation @s ca.ench_handling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/handling
scoreboard players operation @s ca.ench_handling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_main_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_offh_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_head_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_chest_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_legs_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_feet_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_body_lvl
scoreboard players operation @s ca.ench_handling_lvl += @s ca.ench_handling_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_traveling_main_lvl 0
scoreboard players set @s ca.ench_traveling_offh_lvl 0
scoreboard players set @s ca.ench_traveling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/traveling
scoreboard players operation @s ca.ench_traveling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:vanilla/traveling
scoreboard players operation @s ca.ench_traveling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_main_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_offh_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_head_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_chest_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_legs_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_feet_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_body_lvl
scoreboard players operation @s ca.ench_traveling_lvl += @s ca.ench_traveling_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_amplitude_main_lvl 0
scoreboard players set @s ca.ench_amplitude_offh_lvl 0
scoreboard players set @s ca.ench_amplitude_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/amplitude
scoreboard players operation @s ca.ench_amplitude_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/amplitude
scoreboard players operation @s ca.ench_amplitude_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_main_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_offh_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_head_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_chest_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_legs_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_feet_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_body_lvl
scoreboard players operation @s ca.ench_amplitude_lvl += @s ca.ench_amplitude_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_lucky_main_lvl 0
scoreboard players set @s ca.ench_lucky_offh_lvl 0
scoreboard players set @s ca.ench_lucky_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/lucky
scoreboard players operation @s ca.ench_lucky_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/lucky
scoreboard players operation @s ca.ench_lucky_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_main_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_offh_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_head_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_chest_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_legs_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_feet_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_body_lvl
scoreboard players operation @s ca.ench_lucky_lvl += @s ca.ench_lucky_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_resonance_main_lvl 0
scoreboard players set @s ca.ench_resonance_offh_lvl 0
scoreboard players set @s ca.ench_resonance_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/resonance
scoreboard players operation @s ca.ench_resonance_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/resonance
scoreboard players operation @s ca.ench_resonance_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_main_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_offh_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_head_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_chest_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_legs_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_feet_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_body_lvl
scoreboard players operation @s ca.ench_resonance_lvl += @s ca.ench_resonance_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_technique_main_lvl 0
scoreboard players set @s ca.ench_technique_offh_lvl 0
scoreboard players set @s ca.ench_technique_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/technique
scoreboard players operation @s ca.ench_technique_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/technique
scoreboard players operation @s ca.ench_technique_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_main_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_offh_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_head_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_chest_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_legs_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_feet_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_body_lvl
scoreboard players operation @s ca.ench_technique_lvl += @s ca.ench_technique_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_invigorated_main_lvl 0
scoreboard players set @s ca.ench_invigorated_offh_lvl 0
scoreboard players set @s ca.ench_invigorated_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/invigorated
scoreboard players operation @s ca.ench_invigorated_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/invigorated
scoreboard players operation @s ca.ench_invigorated_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_main_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_offh_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_head_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_chest_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_legs_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_feet_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_body_lvl
scoreboard players operation @s ca.ench_invigorated_lvl += @s ca.ench_invigorated_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_precision_main_lvl 0
scoreboard players set @s ca.ench_precision_offh_lvl 0
scoreboard players set @s ca.ench_precision_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/precision
scoreboard players operation @s ca.ench_precision_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/precision
scoreboard players operation @s ca.ench_precision_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_main_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_offh_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_head_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_chest_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_legs_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_feet_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_body_lvl
scoreboard players operation @s ca.ench_precision_lvl += @s ca.ench_precision_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_echo_main_lvl 0
scoreboard players set @s ca.ench_echo_offh_lvl 0
scoreboard players set @s ca.ench_echo_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/echo
scoreboard players operation @s ca.ench_echo_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/echo
scoreboard players operation @s ca.ench_echo_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_main_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_offh_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_head_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_chest_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_legs_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_feet_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_body_lvl
scoreboard players operation @s ca.ench_echo_lvl += @s ca.ench_echo_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_reverb_main_lvl 0
scoreboard players set @s ca.ench_reverb_offh_lvl 0
scoreboard players set @s ca.ench_reverb_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/reverb
scoreboard players operation @s ca.ench_reverb_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/reverb
scoreboard players operation @s ca.ench_reverb_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_main_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_offh_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_head_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_chest_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_legs_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_feet_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_body_lvl
scoreboard players operation @s ca.ench_reverb_lvl += @s ca.ench_reverb_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_lifesteal_main_lvl 0
scoreboard players set @s ca.ench_lifesteal_offh_lvl 0
scoreboard players set @s ca.ench_lifesteal_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/lifesteal
scoreboard players operation @s ca.ench_lifesteal_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/lifesteal
scoreboard players operation @s ca.ench_lifesteal_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_main_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_offh_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_head_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_chest_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_legs_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_feet_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_body_lvl
scoreboard players operation @s ca.ench_lifesteal_lvl += @s ca.ench_lifesteal_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_cloudstep_main_lvl 0
scoreboard players set @s ca.ench_cloudstep_offh_lvl 0
scoreboard players set @s ca.ench_cloudstep_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/cloudstep
scoreboard players operation @s ca.ench_cloudstep_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/cloudstep
scoreboard players operation @s ca.ench_cloudstep_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_main_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_offh_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_head_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_chest_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_legs_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_feet_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_body_lvl
scoreboard players operation @s ca.ench_cloudstep_lvl += @s ca.ench_cloudstep_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_windborn_main_lvl 0
scoreboard players set @s ca.ench_windborn_offh_lvl 0
scoreboard players set @s ca.ench_windborn_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_attributes:custom/windborn
scoreboard players operation @s ca.ench_windborn_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_attributes:custom/windborn
scoreboard players operation @s ca.ench_windborn_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_main_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_offh_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_head_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_chest_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_legs_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_feet_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_body_lvl
scoreboard players operation @s ca.ench_windborn_lvl += @s ca.ench_windborn_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_blast_protection_main_lvl 0
scoreboard players set @s ca.ench_blast_protection_offh_lvl 0
scoreboard players set @s ca.ench_blast_protection_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_main_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_offh_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_head_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_chest_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_legs_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_feet_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_body_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_projectile_protection_main_lvl 0
scoreboard players set @s ca.ench_projectile_protection_offh_lvl 0
scoreboard players set @s ca.ench_projectile_protection_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:projectile_protection
scoreboard players operation @s ca.ench_projectile_protection_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:projectile_protection
scoreboard players operation @s ca.ench_projectile_protection_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_main_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_offh_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_head_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_chest_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_legs_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_feet_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_body_lvl
scoreboard players operation @s ca.ench_projectile_protection_lvl += @s ca.ench_projectile_protection_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_fire_protection_main_lvl 0
scoreboard players set @s ca.ench_fire_protection_offh_lvl 0
scoreboard players set @s ca.ench_fire_protection_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:fire_protection
scoreboard players operation @s ca.ench_fire_protection_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:fire_protection
scoreboard players operation @s ca.ench_fire_protection_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_main_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_offh_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_head_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_chest_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_legs_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_feet_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_body_lvl
scoreboard players operation @s ca.ench_fire_protection_lvl += @s ca.ench_fire_protection_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_aqua_affinity_main_lvl 0
scoreboard players set @s ca.ench_aqua_affinity_offh_lvl 0
scoreboard players set @s ca.ench_aqua_affinity_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:aqua_affinity
scoreboard players operation @s ca.ench_aqua_affinity_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:aqua_affinity
scoreboard players operation @s ca.ench_aqua_affinity_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_main_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_offh_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_head_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_chest_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_legs_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_feet_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_body_lvl
scoreboard players operation @s ca.ench_aqua_affinity_lvl += @s ca.ench_aqua_affinity_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_respiration_main_lvl 0
scoreboard players set @s ca.ench_respiration_offh_lvl 0
scoreboard players set @s ca.ench_respiration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:respiration
scoreboard players operation @s ca.ench_respiration_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:respiration
scoreboard players operation @s ca.ench_respiration_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_main_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_offh_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_head_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_chest_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_legs_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_feet_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_body_lvl
scoreboard players operation @s ca.ench_respiration_lvl += @s ca.ench_respiration_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_depth_strider_main_lvl 0
scoreboard players set @s ca.ench_depth_strider_offh_lvl 0
scoreboard players set @s ca.ench_depth_strider_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:depth_strider
scoreboard players operation @s ca.ench_depth_strider_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:depth_strider
scoreboard players operation @s ca.ench_depth_strider_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_main_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_offh_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_head_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_chest_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_legs_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_feet_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_body_lvl
scoreboard players operation @s ca.ench_depth_strider_lvl += @s ca.ench_depth_strider_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_soul_speed_main_lvl 0
scoreboard players set @s ca.ench_soul_speed_offh_lvl 0
scoreboard players set @s ca.ench_soul_speed_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:soul_speed
scoreboard players operation @s ca.ench_soul_speed_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:soul_speed
scoreboard players operation @s ca.ench_soul_speed_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_main_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_offh_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_head_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_chest_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_legs_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_feet_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_body_lvl
scoreboard players operation @s ca.ench_soul_speed_lvl += @s ca.ench_soul_speed_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

scoreboard players set @s ca.ench_swift_sneak_main_lvl 0
scoreboard players set @s ca.ench_swift_sneak_offh_lvl 0
scoreboard players set @s ca.ench_swift_sneak_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:swift_sneak
scoreboard players operation @s ca.ench_swift_sneak_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:swift_sneak
scoreboard players operation @s ca.ench_swift_sneak_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_main_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_offh_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_head_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_chest_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_legs_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_feet_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_body_lvl
scoreboard players operation @s ca.ench_swift_sneak_lvl += @s ca.ench_swift_sneak_saddle_lvl


scoreboard players set $ench_timer ca.timer 10
