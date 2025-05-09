scoreboard players set @s ca.ench_hazard_protection_main_lvl 0
scoreboard players set @s ca.ench_hazard_protection_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_enchantment_rework:hazard_protection
scoreboard players operation @s ca.ench_hazard_protection_main_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_hazard_protection_lvl += @s ca.ench_hazard_protection_gear_lvl
scoreboard players operation @s ca.ench_hazard_protection_lvl += @s ca.ench_hazard_protection_main_lvl