scoreboard players set @s ca.ench_dodgeroll_lvl 0

scoreboard players set @s ca.ench_dodgeroll_feet_lvl 0
scoreboard players set @s ca.ench_dodgeroll_legs_lvl 0
scoreboard players set @s ca.ench_dodgeroll_chest_lvl 0
scoreboard players set @s ca.ench_dodgeroll_head_lvl 0
scoreboard players set @s ca.ench_dodgeroll_offh_lvl 0
scoreboard players set @s ca.ench_dodgeroll_main_lvl 0
scoreboard players set @s ca.ench_dodgeroll_body_lvl 0
scoreboard players set @s ca.ench_dodgeroll_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/ranged/dodgeroll
scoreboard players operation @s ca.ench_dodgeroll_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_feet_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_legs_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_chest_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_head_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_offh_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_main_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_body_lvl
scoreboard players operation @s ca.ench_dodgeroll_lvl += @s ca.ench_dodgeroll_saddle_lvl


tag @s remove ca.do_enchant_calc_dodgeroll


