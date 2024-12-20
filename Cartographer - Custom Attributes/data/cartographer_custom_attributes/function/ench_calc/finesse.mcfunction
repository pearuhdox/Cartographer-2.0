scoreboard players set @s ca.ench_finesse_lvl 0
scoreboard players set @s ca.ench_finesse_hand_lvl 0
scoreboard players set @s ca.ench_finesse_gear_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_attributes:vanilla/finesse
scoreboard players operation @s ca.ench_finesse_hand_lvl += $ench ca.ench_var

scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_gear_lvl
scoreboard players operation @s ca.ench_finesse_lvl += @s ca.ench_finesse_hand_lvl

tag @s remove ca.do_enchant_calc_finesse