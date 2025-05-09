execute if score @s ca.ench_throwable_main_lvl matches 1.. store result score $time ca.throwable_time run data get entity @s SelectedItem.components.minecraft:custom_data.cast_time
execute unless score @s ca.ench_throwable_main_lvl matches 1.. store result score $time ca.throwable_time run data get entity @s equipment.offhand.components.minecraft:custom_data.cast_time

execute if score $time ca.throwable_time matches 0 run scoreboard players set $time ca.throwable_time 10

scoreboard players set @s ca.throwable_time 10
scoreboard players operation @s ca.throwable_time -= $time ca.throwable_time