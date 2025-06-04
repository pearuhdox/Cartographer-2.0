scoreboard players set @s ca.attr_ranged_damage_value 0
scoreboard players set @s ca.attr_ranged_damage_value_main 0
scoreboard players set @s ca.attr_ranged_damage_value_offh 0
scoreboard players set @s ca.attr_ranged_damage_value_head 0
scoreboard players set @s ca.attr_ranged_damage_value_chest 0
scoreboard players set @s ca.attr_ranged_damage_value_legs 0
scoreboard players set @s ca.attr_ranged_damage_value_feet 0
scoreboard players set @s ca.attr_ranged_damage_value_saddle 0
scoreboard players set @s ca.attr_ranged_damage_value_body 0

scoreboard players set @s ca.attr_ranged_damage_percent 0
scoreboard players set @s ca.attr_ranged_damage_percent_main 0
scoreboard players set @s ca.attr_ranged_damage_percent_offh 0
scoreboard players set @s ca.attr_ranged_damage_percent_head 0
scoreboard players set @s ca.attr_ranged_damage_percent_chest 0
scoreboard players set @s ca.attr_ranged_damage_percent_legs 0
scoreboard players set @s ca.attr_ranged_damage_percent_feet 0
scoreboard players set @s ca.attr_ranged_damage_percent_saddle 0
scoreboard players set @s ca.attr_ranged_damage_percent_body 0

scoreboard players set @s ca.attr_ranged_damage_percent 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_feet += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_legs += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_chest += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.head.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_head += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.body.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_body += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_saddle += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var



scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.feet.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_feet += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.legs.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_legs += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.chest.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_chest += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.head.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_head += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.body.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_body += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.saddle.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_saddle += $attr ca.attr_var


scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_main
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_offh
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_head
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_chest
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_legs
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_feet
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_saddle
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_body
scoreboard players operation @s ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value_bonus

scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_main
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_offh
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_head
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_chest
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_legs
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_feet
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_saddle
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_body
scoreboard players operation @s ca.attr_ranged_damage_percent += @s ca.attr_ranged_damage_percent_bonus

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_precision_lvl
scoreboard players operation $ench ca.attr_var *= $5 ca.CONSTANT
scoreboard players operation @s ca.attr_ranged_damage_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_ranged_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_ranged_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_ranged_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_ranged_damage_total = $total ca.attr_var

execute if score @s ca.attr_ranged_damage_value matches 0 run scoreboard players set @s ca.attr_ranged_damage_value -2000000
execute if score @s ca.attr_ranged_damage_percent matches 0 run scoreboard players set @s ca.attr_ranged_damage_percent -2000000
execute if score @s ca.attr_ranged_damage_total matches 0 run scoreboard players set @s ca.attr_ranged_damage_total -2000000

scoreboard players set $can_auto_set ca.attr_ranged_damage_total 0
execute if score @s ca.attr_ranged_damage_value matches 1.. run scoreboard players set $can_auto_set ca.attr_ranged_damage_total 1
execute if score @s ca.attr_ranged_damage_percent matches 1.. unless score @s ca.attr_ranged_damage_percent matches 100 run scoreboard players set $can_auto_set ca.attr_ranged_damage_total 1

execute if score $can_auto_set ca.attr_ranged_damage_total matches 1.. unless score $disable_auto_ranged_damage ca.gamerule matches 1 if items entity @s weapon.mainhand #cartographer_core:ranged_weapons_auto_set unless items entity @s weapon.mainhand *[minecraft:custom_data~{custom_attributes:{ranged_damage:{}}}] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/auto_set/do {slot:"mainhand"}
execute if score $can_auto_set ca.attr_ranged_damage_total matches 1.. unless score $disable_auto_ranged_damage ca.gamerule matches 1 if items entity @s weapon.offhand #cartographer_core:ranged_weapons_auto_set unless items entity @s weapon.offhand *[minecraft:custom_data~{custom_attributes:{ranged_damage:{}}}] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/auto_set/do {slot:"offhand"}


tag @s remove ca.do_attr_calc_ranged_damage