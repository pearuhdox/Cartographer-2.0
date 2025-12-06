execute if score @s ca.ench_ambush_main_lvl matches 1.. store result score $time ca.ambush_time run data get entity @s SelectedItem.components.minecraft:custom_data.cast_time
execute unless score @s ca.ench_ambush_main_lvl matches 1.. store result score $time ca.ambush_time run data get entity @s equipment.offhand.components.minecraft:custom_data.cast_time

execute if score $time ca.ambush_time matches 0 run scoreboard players set $time ca.ambush_time 15

scoreboard players set @s ca.ambush_time 15
scoreboard players operation @s ca.ambush_time -= $time ca.ambush_time