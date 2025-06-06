scoreboard players set @s ca.ench_blast_protection_lvl 0

scoreboard players set @s ca.ench_blast_protection_feet_lvl 0
scoreboard players set @s ca.ench_blast_protection_legs_lvl 0
scoreboard players set @s ca.ench_blast_protection_chest_lvl 0
scoreboard players set @s ca.ench_blast_protection_head_lvl 0
scoreboard players set @s ca.ench_blast_protection_offh_lvl 0
scoreboard players set @s ca.ench_blast_protection_main_lvl 0
scoreboard players set @s ca.ench_blast_protection_body_lvl 0
scoreboard players set @s ca.ench_blast_protection_saddle_lvl 0

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_feet_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_legs_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_chest_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.head.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_head_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_offh_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_main_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.body.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_body_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:enchantments.minecraft:blast_protection
scoreboard players operation @s ca.ench_blast_protection_saddle_lvl += $ench ca.ench_var


scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_feet_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_legs_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_chest_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_head_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_offh_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_main_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_body_lvl
scoreboard players operation @s ca.ench_blast_protection_lvl += @s ca.ench_blast_protection_saddle_lvl


scoreboard players set $ench_timer ca.timer 10

tag @s remove ca.do_enchant_calc_blast_protection
