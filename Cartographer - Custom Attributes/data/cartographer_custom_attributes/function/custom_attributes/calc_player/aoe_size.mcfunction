scoreboard players set @s ca.attr_aoe_size_value 0
scoreboard players set @s ca.attr_aoe_size_value_main 0
scoreboard players set @s ca.attr_aoe_size_value_offh 0
scoreboard players set @s ca.attr_aoe_size_value_head 0
scoreboard players set @s ca.attr_aoe_size_value_chest 0
scoreboard players set @s ca.attr_aoe_size_value_legs 0
scoreboard players set @s ca.attr_aoe_size_value_feet 0
scoreboard players set @s ca.attr_aoe_size_value_saddle 0
scoreboard players set @s ca.attr_aoe_size_value_body 0

scoreboard players set @s ca.attr_aoe_size_percent 0
scoreboard players set @s ca.attr_aoe_size_percent_main 0
scoreboard players set @s ca.attr_aoe_size_percent_offh 0
scoreboard players set @s ca.attr_aoe_size_percent_head 0
scoreboard players set @s ca.attr_aoe_size_percent_chest 0
scoreboard players set @s ca.attr_aoe_size_percent_legs 0
scoreboard players set @s ca.attr_aoe_size_percent_feet 0
scoreboard players set @s ca.attr_aoe_size_percent_saddle 0
scoreboard players set @s ca.attr_aoe_size_percent_body 0

scoreboard players set @s ca.attr_aoe_size_percent 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_feet += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_legs += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_chest += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.head.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_head += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.body.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_body += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_saddle += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.base.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.base.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var



scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_feet += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_legs += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_chest += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.head.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_head += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.body.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_body += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_saddle += $attr ca.attr_var


scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_main
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_offh
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_head
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_chest
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_legs
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_feet
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_saddle
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_body
scoreboard players operation @s ca.attr_aoe_size_value += @s ca.attr_aoe_size_value_bonus

scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_main
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_offh
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_head
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_chest
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_legs
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_feet
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_saddle
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_body
scoreboard players operation @s ca.attr_aoe_size_percent += @s ca.attr_aoe_size_percent_bonus

scoreboard players add @s ca.attr_aoe_size_percent 100

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_amplitude_lvl
scoreboard players operation $ench ca.attr_var *= $10 ca.CONSTANT
scoreboard players operation @s ca.attr_aoe_size_percent += $ench ca.attr_var

scoreboard players operation $percent ca.attr_var = @s ca.attr_aoe_size_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_aoe_size_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_aoe_size_total = $total ca.attr_var

execute if score @s ca.attr_aoe_size_value matches 0 run scoreboard players set @s ca.attr_aoe_size_value -2000000
execute if score @s ca.attr_aoe_size_percent matches 0 run scoreboard players set @s ca.attr_aoe_size_percent -2000000
execute if score @s ca.attr_aoe_size_total matches 0 run scoreboard players set @s ca.attr_aoe_size_total -2000000

tag @s remove ca.do_attr_calc_aoe_size
