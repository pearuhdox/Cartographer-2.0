scoreboard players set @s ca.ench_repulsion_lvl 0
scoreboard players set @s ca.ench_repulsion_hand_lvl 0
scoreboard players set @s ca.ench_repulsion_gear_lvl 0


scoreboard players set $ench ca.ench_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:ranged_weapons if items entity @s weapon.offhand #cartographer_core:ranged_weapons store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/repulsion
scoreboard players operation @s ca.ench_repulsion_gear_lvl += $ench ca.ench_var

scoreboard players set $ench ca.ench_var 0
execute store result score $ench ca.ench_var run data get storage cartographer_core:player_equip data.main.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/repulsion
scoreboard players operation @s ca.ench_repulsion_hand_lvl += $ench ca.ench_var

execute unless score @s ca.ench_repulsion_hand_lvl matches 1.. run scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_gear_lvl
scoreboard players operation @s ca.ench_repulsion_lvl += @s ca.ench_repulsion_hand_lvl

tag @s remove ca.do_enchant_calc_repulsion