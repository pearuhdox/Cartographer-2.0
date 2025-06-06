scoreboard players set @s ca.ench_drilling_lvl 0

scoreboard players set @s ca.ench_drilling_feet_lvl 0
scoreboard players set @s ca.ench_drilling_legs_lvl 0
scoreboard players set @s ca.ench_drilling_chest_lvl 0
scoreboard players set @s ca.ench_drilling_head_lvl 0
scoreboard players set @s ca.ench_drilling_offh_lvl 0
scoreboard players set @s ca.ench_drilling_main_lvl 0
scoreboard players set @s ca.ench_drilling_body_lvl 0
scoreboard players set @s ca.ench_drilling_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.cartographer_custom_enchantments:tool/drilling
scoreboard players operation @s ca.ench_drilling_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_feet_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_legs_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_chest_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_head_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_offh_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_main_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_body_lvl
scoreboard players operation @s ca.ench_drilling_lvl += @s ca.ench_drilling_saddle_lvl


tag @s remove ca.do_enchant_calc_drilling


