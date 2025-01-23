execute if score @s ca.ench_ambushing_hand_lvl matches 1.. store result score $time ca.ambushing_time run data get entity @s SelectedItem.components.minecraft:custom_data.cast_time
execute unless score @s ca.ench_ambushing_hand_lvl matches 1.. store result score $time ca.ambushing_time run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.cast_time

execute if score $time ca.ambushing_time matches 0 run scoreboard players set $time ca.ambushing_time 15

scoreboard players set @s ca.ambushing_time 15
scoreboard players operation @s ca.ambushing_time -= $time ca.ambushing_time