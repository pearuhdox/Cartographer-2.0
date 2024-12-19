scoreboard players set @s ca.ench_flame_lvl 0
scoreboard players set @s ca.ench_flame_hand_lvl 0
scoreboard players set @s ca.ench_flame_gear_lvl 0


scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.levels.minecraft:flame
scoreboard players operation @s ca.ench_flame_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.minecraft:flame
scoreboard players operation @s ca.ench_flame_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_flame_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_gear_lvl
scoreboard players operation @s ca.ench_flame_lvl += @s ca.ench_flame_hand_lvl

tag @s remove ca.do_enchant_calc_flame