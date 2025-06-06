scoreboard players set @s ca.ench_pulling_lvl 0

scoreboard players set @s ca.ench_pulling_feet_lvl 0
scoreboard players set @s ca.ench_pulling_legs_lvl 0
scoreboard players set @s ca.ench_pulling_chest_lvl 0
scoreboard players set @s ca.ench_pulling_head_lvl 0
scoreboard players set @s ca.ench_pulling_offh_lvl 0
scoreboard players set @s ca.ench_pulling_main_lvl 0
scoreboard players set @s ca.ench_pulling_body_lvl 0
scoreboard players set @s ca.ench_pulling_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/general/pulling
scoreboard players operation @s ca.ench_pulling_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_feet_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_legs_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_chest_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_head_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_offh_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_main_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_body_lvl
scoreboard players operation @s ca.ench_pulling_lvl += @s ca.ench_pulling_saddle_lvl


tag @s remove ca.do_enchant_calc_pulling


