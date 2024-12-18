data modify storage cartographer_core:player_equip data.main set value {}
data modify storage cartographer_core:player_equip data.main set from entity @s SelectedItem

scoreboard players set @s ca.ench_bracing_hand_lvl 0
scoreboard players set @s ca.ench_bracing_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/bracing
scoreboard players operation @s ca.ench_bracing_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_gear_lvl
scoreboard players operation @s ca.ench_bracing_lvl += @s ca.ench_bracing_hand_lvl


scoreboard players set @s ca.ench_hastiness_hand_lvl 0
scoreboard players set @s ca.ench_hastiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/hastiness
scoreboard players operation @s ca.ench_hastiness_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_gear_lvl
scoreboard players operation @s ca.ench_hastiness_lvl += @s ca.ench_hastiness_hand_lvl


scoreboard players set @s ca.ench_lifeblood_hand_lvl 0
scoreboard players set @s ca.ench_lifeblood_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/lifeblood
scoreboard players operation @s ca.ench_lifeblood_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_gear_lvl
scoreboard players operation @s ca.ench_lifeblood_lvl += @s ca.ench_lifeblood_hand_lvl


scoreboard players set @s ca.ench_mightiness_hand_lvl 0
scoreboard players set @s ca.ench_mightiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/mightiness
scoreboard players operation @s ca.ench_mightiness_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_gear_lvl
scoreboard players operation @s ca.ench_mightiness_lvl += @s ca.ench_mightiness_hand_lvl


scoreboard players set @s ca.ench_sapper_hand_lvl 0
scoreboard players set @s ca.ench_sapper_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/sapper
scoreboard players operation @s ca.ench_sapper_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_gear_lvl
scoreboard players operation @s ca.ench_sapper_lvl += @s ca.ench_sapper_hand_lvl


scoreboard players set @s ca.ench_stealthiness_hand_lvl 0
scoreboard players set @s ca.ench_stealthiness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/stealthiness
scoreboard players operation @s ca.ench_stealthiness_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_gear_lvl
scoreboard players operation @s ca.ench_stealthiness_lvl += @s ca.ench_stealthiness_hand_lvl


scoreboard players set @s ca.ench_swiftness_hand_lvl 0
scoreboard players set @s ca.ench_swiftness_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:kill/swiftness
scoreboard players operation @s ca.ench_swiftness_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_gear_lvl
scoreboard players operation @s ca.ench_swiftness_lvl += @s ca.ench_swiftness_hand_lvl


scoreboard players set @s ca.ench_evasion_hand_lvl 0
scoreboard players set @s ca.ench_evasion_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:passive/evasion
scoreboard players operation @s ca.ench_evasion_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_gear_lvl
scoreboard players operation @s ca.ench_evasion_lvl += @s ca.ench_evasion_hand_lvl


scoreboard players set @s ca.ench_nullifying_hand_lvl 0
scoreboard players set @s ca.ench_nullifying_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:passive/nullifying
scoreboard players operation @s ca.ench_nullifying_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_gear_lvl
scoreboard players operation @s ca.ench_nullifying_lvl += @s ca.ench_nullifying_hand_lvl


scoreboard players set @s ca.ench_regeneration_hand_lvl 0
scoreboard players set @s ca.ench_regeneration_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:passive/regeneration
scoreboard players operation @s ca.ench_regeneration_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_gear_lvl
scoreboard players operation @s ca.ench_regeneration_lvl += @s ca.ench_regeneration_hand_lvl


scoreboard players set @s ca.ench_shielding_hand_lvl 0
scoreboard players set @s ca.ench_shielding_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_statuses:passive/shielding
scoreboard players operation @s ca.ench_shielding_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_gear_lvl
scoreboard players operation @s ca.ench_shielding_lvl += @s ca.ench_shielding_hand_lvl


