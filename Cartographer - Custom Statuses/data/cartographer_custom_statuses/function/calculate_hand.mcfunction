
scoreboard players set @s ca.ench_evasion_main_lvl 0
scoreboard players set @s ca.ench_evasion_offh_lvl 0
scoreboard players set @s ca.ench_evasion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:passive/evasion
scoreboard players operation @s ca.ench_evasion_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:passive/evasion
scoreboard players operation @s ca.ench_evasion_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_main_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_offh_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_head_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_chest_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_legs_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_feet_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_body_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_saddle_lvl



scoreboard players set @s ca.ench_nullifying_main_lvl 0
scoreboard players set @s ca.ench_nullifying_offh_lvl 0
scoreboard players set @s ca.ench_nullifying_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:passive/nullifying
scoreboard players operation @s ca.ench_nullifying_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:passive/nullifying
scoreboard players operation @s ca.ench_nullifying_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_main_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_offh_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_head_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_chest_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_legs_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_feet_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_body_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_saddle_lvl



scoreboard players set @s ca.ench_regeneration_main_lvl 0
scoreboard players set @s ca.ench_regeneration_offh_lvl 0
scoreboard players set @s ca.ench_regeneration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:passive/regeneration
scoreboard players operation @s ca.ench_regeneration_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:passive/regeneration
scoreboard players operation @s ca.ench_regeneration_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_main_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_offh_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_head_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_chest_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_legs_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_feet_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_body_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_saddle_lvl



scoreboard players set @s ca.ench_shielding_main_lvl 0
scoreboard players set @s ca.ench_shielding_offh_lvl 0
scoreboard players set @s ca.ench_shielding_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:passive/shielding
scoreboard players operation @s ca.ench_shielding_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:passive/shielding
scoreboard players operation @s ca.ench_shielding_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_main_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_offh_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_head_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_chest_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_legs_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_feet_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_body_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_saddle_lvl



scoreboard players set @s ca.ench_decontaminate_main_lvl 0
scoreboard players set @s ca.ench_decontaminate_offh_lvl 0
scoreboard players set @s ca.ench_decontaminate_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:passive/decontaminate
scoreboard players operation @s ca.ench_decontaminate_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:passive/decontaminate
scoreboard players operation @s ca.ench_decontaminate_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_main_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_offh_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_head_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_chest_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_legs_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_feet_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_body_lvl
scoreboard players operation @s ca.ench_decontaminate_lvl += @s ca.ench_decontaminate_saddle_lvl



scoreboard players set @s ca.ench_mightiness_main_lvl 0
scoreboard players set @s ca.ench_mightiness_offh_lvl 0
scoreboard players set @s ca.ench_mightiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/mightiness
scoreboard players operation @s ca.ench_mightiness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/mightiness
scoreboard players operation @s ca.ench_mightiness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_main_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_offh_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_head_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_chest_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_legs_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_feet_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_body_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_saddle_lvl



scoreboard players set @s ca.ench_swiftness_main_lvl 0
scoreboard players set @s ca.ench_swiftness_offh_lvl 0
scoreboard players set @s ca.ench_swiftness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/swiftness
scoreboard players operation @s ca.ench_swiftness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/swiftness
scoreboard players operation @s ca.ench_swiftness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_main_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_offh_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_head_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_chest_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_legs_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_feet_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_body_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_saddle_lvl



scoreboard players set @s ca.ench_hastiness_main_lvl 0
scoreboard players set @s ca.ench_hastiness_offh_lvl 0
scoreboard players set @s ca.ench_hastiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/hastiness
scoreboard players operation @s ca.ench_hastiness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/hastiness
scoreboard players operation @s ca.ench_hastiness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_main_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_offh_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_head_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_chest_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_legs_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_feet_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_body_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_saddle_lvl



scoreboard players set @s ca.ench_stealthiness_main_lvl 0
scoreboard players set @s ca.ench_stealthiness_offh_lvl 0
scoreboard players set @s ca.ench_stealthiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/stealthiness
scoreboard players operation @s ca.ench_stealthiness_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/stealthiness
scoreboard players operation @s ca.ench_stealthiness_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_main_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_offh_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_head_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_chest_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_legs_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_feet_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_body_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_saddle_lvl



scoreboard players set @s ca.ench_sapper_main_lvl 0
scoreboard players set @s ca.ench_sapper_offh_lvl 0
scoreboard players set @s ca.ench_sapper_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/sapper
scoreboard players operation @s ca.ench_sapper_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/sapper
scoreboard players operation @s ca.ench_sapper_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_main_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_offh_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_head_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_chest_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_legs_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_feet_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_body_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_saddle_lvl



scoreboard players set @s ca.ench_lifeblood_main_lvl 0
scoreboard players set @s ca.ench_lifeblood_offh_lvl 0
scoreboard players set @s ca.ench_lifeblood_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/lifeblood
scoreboard players operation @s ca.ench_lifeblood_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/lifeblood
scoreboard players operation @s ca.ench_lifeblood_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_main_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_offh_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_head_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_chest_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_legs_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_feet_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_body_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_saddle_lvl



scoreboard players set @s ca.ench_bracing_main_lvl 0
scoreboard players set @s ca.ench_bracing_offh_lvl 0
scoreboard players set @s ca.ench_bracing_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:kill/bracing
scoreboard players operation @s ca.ench_bracing_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:kill/bracing
scoreboard players operation @s ca.ench_bracing_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_main_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_offh_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_head_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_chest_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_legs_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_feet_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_body_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_saddle_lvl



scoreboard players set @s ca.ench_annulling_main_lvl 0
scoreboard players set @s ca.ench_annulling_offh_lvl 0
scoreboard players set @s ca.ench_annulling_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_statuses:curse/annulling
scoreboard players operation @s ca.ench_annulling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_statuses:curse/annulling
scoreboard players operation @s ca.ench_annulling_offh_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_main_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_offh_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_head_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_chest_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_legs_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_feet_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_body_lvl
scoreboard players operation @s ca.ench_annulling_lvl += @s ca.ench_annulling_saddle_lvl


