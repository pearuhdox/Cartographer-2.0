scoreboard players set @s ca.ench_thorns_lvl 0

scoreboard players set @s ca.ench_thorns_feet_lvl 0
scoreboard players set @s ca.ench_thorns_legs_lvl 0
scoreboard players set @s ca.ench_thorns_chest_lvl 0
scoreboard players set @s ca.ench_thorns_head_lvl 0
scoreboard players set @s ca.ench_thorns_offh_lvl 0
scoreboard players set @s ca.ench_thorns_main_lvl 0
scoreboard players set @s ca.ench_thorns_body_lvl 0
scoreboard players set @s ca.ench_thorns_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.minecraft:thorns
scoreboard players operation @s ca.ench_thorns_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_feet_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_legs_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_chest_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_head_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_offh_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_main_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_body_lvl
scoreboard players operation @s ca.ench_thorns_lvl += @s ca.ench_thorns_saddle_lvl


tag @s remove ca.do_enchant_calc_thorns


