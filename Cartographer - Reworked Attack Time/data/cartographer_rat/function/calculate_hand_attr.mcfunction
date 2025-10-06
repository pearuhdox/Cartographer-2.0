scoreboard players set @s ca.attr_invul_frames_value 0
scoreboard players set @s ca.attr_invul_frames_value_main 0
scoreboard players set @s ca.attr_invul_frames_value_offh 0

scoreboard players set @s ca.attr_invul_frames_percent 0
scoreboard players set @s ca.attr_invul_frames_percent_main 0
scoreboard players set @s ca.attr_invul_frames_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_frames.value.amount 100
scoreboard players operation @s ca.attr_invul_frames_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_frames.percent.amount 100
scoreboard players operation @s ca.attr_invul_frames_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_frames.base.amount 100
scoreboard players operation @s ca.attr_invul_frames_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_frames.base.amount 100
scoreboard players operation @s ca.attr_invul_frames_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_frames.value.amount 100
scoreboard players operation @s ca.attr_invul_frames_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_frames.percent.amount 100
scoreboard players operation @s ca.attr_invul_frames_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_main
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_offh
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_head
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_chest
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_legs
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_feet
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_saddle
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_body
scoreboard players operation @s ca.attr_invul_frames_value += @s ca.attr_invul_frames_value_bonus

scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_main
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_offh
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_head
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_chest
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_legs
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_feet
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_saddle
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_body
scoreboard players operation @s ca.attr_invul_frames_percent += @s ca.attr_invul_frames_percent_bonus

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_precision_lvl
scoreboard players operation $ench ca.attr_var *= $5 ca.CONSTANT
scoreboard players operation @s ca.attr_invul_frames_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_invul_frames_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_invul_frames_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_invul_frames_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_invul_frames_total = $total ca.attr_var

execute if score @s ca.attr_invul_frames_value matches 0 run scoreboard players set @s ca.attr_invul_frames_value -2000000
execute if score @s ca.attr_invul_frames_percent matches 0 run scoreboard players set @s ca.attr_invul_frames_percent -2000000
execute if score @s ca.attr_invul_frames_total matches 0 run scoreboard players set @s ca.attr_invul_frames_total -2000000



scoreboard players set @s ca.attr_invul_shred_value 0
scoreboard players set @s ca.attr_invul_shred_value_main 0
scoreboard players set @s ca.attr_invul_shred_value_offh 0

scoreboard players set @s ca.attr_invul_shred_percent 0
scoreboard players set @s ca.attr_invul_shred_percent_main 0
scoreboard players set @s ca.attr_invul_shred_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_shred.value.amount 100
scoreboard players operation @s ca.attr_invul_shred_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_shred.percent.amount 100
scoreboard players operation @s ca.attr_invul_shred_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.invul_shred.base.amount 100
scoreboard players operation @s ca.attr_invul_shred_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_shred.base.amount 100
scoreboard players operation @s ca.attr_invul_shred_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_shred.value.amount 100
scoreboard players operation @s ca.attr_invul_shred_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.invul_shred.percent.amount 100
scoreboard players operation @s ca.attr_invul_shred_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_main
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_offh
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_head
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_chest
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_legs
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_feet
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_saddle
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_body
scoreboard players operation @s ca.attr_invul_shred_value += @s ca.attr_invul_shred_value_bonus

scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_main
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_offh
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_head
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_chest
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_legs
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_feet
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_saddle
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_body
scoreboard players operation @s ca.attr_invul_shred_percent += @s ca.attr_invul_shred_percent_bonus

scoreboard players add @s ca.attr_invul_shred_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_invul_shred_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_invul_shred_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_invul_shred_total = $total ca.attr_var

execute if score @s ca.attr_invul_shred_value matches 0 run scoreboard players set @s ca.attr_invul_shred_value -2000000
execute if score @s ca.attr_invul_shred_percent matches 0 run scoreboard players set @s ca.attr_invul_shred_percent -2000000
execute if score @s ca.attr_invul_shred_total matches 0 run scoreboard players set @s ca.attr_invul_shred_total -2000000