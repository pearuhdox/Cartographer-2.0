scoreboard players set @s ca.ench_punch_lvl 0

scoreboard players set @s ca.ench_punch_feet_lvl 0
scoreboard players set @s ca.ench_punch_legs_lvl 0
scoreboard players set @s ca.ench_punch_chest_lvl 0
scoreboard players set @s ca.ench_punch_head_lvl 0
scoreboard players set @s ca.ench_punch_offh_lvl 0
scoreboard players set @s ca.ench_punch_main_lvl 0
scoreboard players set @s ca.ench_punch_body_lvl 0
scoreboard players set @s ca.ench_punch_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.minecraft:punch
scoreboard players operation @s ca.ench_punch_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_feet_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_legs_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_chest_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_head_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_offh_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_main_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_body_lvl
scoreboard players operation @s ca.ench_punch_lvl += @s ca.ench_punch_saddle_lvl


tag @s remove ca.do_enchant_calc_punch


