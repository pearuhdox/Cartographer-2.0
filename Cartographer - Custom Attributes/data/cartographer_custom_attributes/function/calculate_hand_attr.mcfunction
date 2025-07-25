scoreboard players set @s ca.attr_ranged_damage_value 0
scoreboard players set @s ca.attr_ranged_damage_value_main 0
scoreboard players set @s ca.attr_ranged_damage_value_offh 0

scoreboard players set @s ca.attr_ranged_damage_percent 0
scoreboard players set @s ca.attr_ranged_damage_percent_main 0
scoreboard players set @s ca.attr_ranged_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.value.amount 100
scoreboard players operation @s ca.attr_ranged_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_damage.percent.amount 100
scoreboard players operation @s ca.attr_ranged_damage_percent_offh += $attr ca.attr_var


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

execute if score $can_auto_set ca.attr_ranged_damage_total matches 1.. unless score $disable_auto_ranged_damage ca.gamerule matches 1 if items entity @s weapon.mainhand #cartographer_core:ranged_weapons_auto_set unless items entity @s weapon.mainhand *[minecraft:custom_data~{custom_attributes:{ranged_damage:{}}}] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/auto_set/do {grab_path:"SelectedItem",slot:"mainhand"}
execute if score $can_auto_set ca.attr_ranged_damage_total matches 1.. unless score $disable_auto_ranged_damage ca.gamerule matches 1 if items entity @s weapon.offhand #cartographer_core:ranged_weapons_auto_set unless items entity @s weapon.offhand *[minecraft:custom_data~{custom_attributes:{ranged_damage:{}}}] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/auto_set/do {grab_path:"equipment.offhand",slot:"offhand"}


scoreboard players set @s ca.attr_ranged_velocity_value 0
scoreboard players set @s ca.attr_ranged_velocity_value_main 0
scoreboard players set @s ca.attr_ranged_velocity_value_offh 0

scoreboard players set @s ca.attr_ranged_velocity_percent 0
scoreboard players set @s ca.attr_ranged_velocity_percent_main 0
scoreboard players set @s ca.attr_ranged_velocity_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_velocity.value.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_velocity.percent.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.ranged_velocity.base.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_velocity.base.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_velocity.value.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.ranged_velocity.percent.amount 100
scoreboard players operation @s ca.attr_ranged_velocity_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_main
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_offh
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_head
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_chest
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_legs
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_feet
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_saddle
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_body
scoreboard players operation @s ca.attr_ranged_velocity_value += @s ca.attr_ranged_velocity_value_bonus

scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_main
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_offh
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_head
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_chest
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_legs
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_feet
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_saddle
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_body
scoreboard players operation @s ca.attr_ranged_velocity_percent += @s ca.attr_ranged_velocity_percent_bonus

scoreboard players add @s ca.attr_ranged_velocity_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_ranged_velocity_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_ranged_velocity_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_ranged_velocity_total = $total ca.attr_var

execute if score @s ca.attr_ranged_velocity_value matches 0 run scoreboard players set @s ca.attr_ranged_velocity_value -2000000
execute if score @s ca.attr_ranged_velocity_percent matches 0 run scoreboard players set @s ca.attr_ranged_velocity_percent -2000000
execute if score @s ca.attr_ranged_velocity_total matches 0 run scoreboard players set @s ca.attr_ranged_velocity_total -2000000


scoreboard players set @s ca.attr_combat_luck_value 0
scoreboard players set @s ca.attr_combat_luck_value_main 0
scoreboard players set @s ca.attr_combat_luck_value_offh 0

scoreboard players set @s ca.attr_combat_luck_percent 0
scoreboard players set @s ca.attr_combat_luck_percent_main 0
scoreboard players set @s ca.attr_combat_luck_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.combat_luck.value.amount 100
scoreboard players operation @s ca.attr_combat_luck_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.combat_luck.percent.amount 100
scoreboard players operation @s ca.attr_combat_luck_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.combat_luck.base.amount 100
scoreboard players operation @s ca.attr_combat_luck_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.combat_luck.base.amount 100
scoreboard players operation @s ca.attr_combat_luck_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.combat_luck.value.amount 100
scoreboard players operation @s ca.attr_combat_luck_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.combat_luck.percent.amount 100
scoreboard players operation @s ca.attr_combat_luck_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_main
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_offh
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_head
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_chest
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_legs
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_feet
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_saddle
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_body
scoreboard players operation @s ca.attr_combat_luck_value += @s ca.attr_combat_luck_value_bonus

scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_main
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_offh
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_head
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_chest
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_legs
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_feet
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_saddle
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_body
scoreboard players operation @s ca.attr_combat_luck_percent += @s ca.attr_combat_luck_percent_bonus

scoreboard players add @s ca.attr_combat_luck_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_combat_luck_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_lucky_lvl
scoreboard players operation $ench ca.attr_var *= $20 ca.CONSTANT
scoreboard players operation @s ca.attr_combat_luck_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_combat_luck_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_combat_luck_total = $total ca.attr_var

execute if score @s ca.attr_combat_luck_value matches 0 run scoreboard players set @s ca.attr_combat_luck_value -2000000
execute if score @s ca.attr_combat_luck_percent matches 0 run scoreboard players set @s ca.attr_combat_luck_percent -2000000
execute if score @s ca.attr_combat_luck_total matches 0 run scoreboard players set @s ca.attr_combat_luck_total -2000000


scoreboard players set @s ca.attr_potion_size_value 0
scoreboard players set @s ca.attr_potion_size_value_main 0
scoreboard players set @s ca.attr_potion_size_value_offh 0

scoreboard players set @s ca.attr_potion_size_percent 0
scoreboard players set @s ca.attr_potion_size_percent_main 0
scoreboard players set @s ca.attr_potion_size_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.potion_size.value.amount 100
scoreboard players operation @s ca.attr_potion_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.potion_size.percent.amount 100
scoreboard players operation @s ca.attr_potion_size_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.potion_size.base.amount 100
scoreboard players operation @s ca.attr_potion_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.potion_size.base.amount 100
scoreboard players operation @s ca.attr_potion_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.potion_size.value.amount 100
scoreboard players operation @s ca.attr_potion_size_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.potion_size.percent.amount 100
scoreboard players operation @s ca.attr_potion_size_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_main
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_offh
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_head
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_chest
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_legs
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_feet
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_saddle
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_body
scoreboard players operation @s ca.attr_potion_size_value += @s ca.attr_potion_size_value_bonus

scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_main
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_offh
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_head
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_chest
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_legs
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_feet
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_saddle
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_body
scoreboard players operation @s ca.attr_potion_size_percent += @s ca.attr_potion_size_percent_bonus

scoreboard players add @s ca.attr_potion_size_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_potion_size_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_potion_size_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_potion_size_total = $total ca.attr_var

execute if score @s ca.attr_potion_size_value matches 0 run scoreboard players set @s ca.attr_potion_size_value -2000000
execute if score @s ca.attr_potion_size_percent matches 0 run scoreboard players set @s ca.attr_potion_size_percent -2000000
execute if score @s ca.attr_potion_size_total matches 0 run scoreboard players set @s ca.attr_potion_size_total -2000000


scoreboard players set @s ca.attr_aoe_size_value 0
scoreboard players set @s ca.attr_aoe_size_value_main 0
scoreboard players set @s ca.attr_aoe_size_value_offh 0

scoreboard players set @s ca.attr_aoe_size_percent 0
scoreboard players set @s ca.attr_aoe_size_percent_main 0
scoreboard players set @s ca.attr_aoe_size_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_size.base.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.base.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.value.amount 100
scoreboard players operation @s ca.attr_aoe_size_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_size.percent.amount 100
scoreboard players operation @s ca.attr_aoe_size_percent_offh += $attr ca.attr_var


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


scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_amplitude_lvl
scoreboard players operation $ench ca.attr_var *= $10 ca.CONSTANT
scoreboard players operation @s ca.attr_aoe_size_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_aoe_size_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_aoe_size_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_aoe_size_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_aoe_size_total = $total ca.attr_var

execute if score @s ca.attr_aoe_size_value matches 0 run scoreboard players set @s ca.attr_aoe_size_value -2000000
execute if score @s ca.attr_aoe_size_percent matches 0 run scoreboard players set @s ca.attr_aoe_size_percent -2000000
execute if score @s ca.attr_aoe_size_total matches 0 run scoreboard players set @s ca.attr_aoe_size_total -2000000


scoreboard players set @s ca.attr_aoe_damage_value 0
scoreboard players set @s ca.attr_aoe_damage_value_main 0
scoreboard players set @s ca.attr_aoe_damage_value_offh 0

scoreboard players set @s ca.attr_aoe_damage_percent 0
scoreboard players set @s ca.attr_aoe_damage_percent_main 0
scoreboard players set @s ca.attr_aoe_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_damage.value.amount 100
scoreboard players operation @s ca.attr_aoe_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_damage.percent.amount 100
scoreboard players operation @s ca.attr_aoe_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.aoe_damage.base.amount 100
scoreboard players operation @s ca.attr_aoe_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_damage.base.amount 100
scoreboard players operation @s ca.attr_aoe_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_damage.value.amount 100
scoreboard players operation @s ca.attr_aoe_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.aoe_damage.percent.amount 100
scoreboard players operation @s ca.attr_aoe_damage_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_main
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_offh
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_head
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_chest
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_legs
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_feet
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_saddle
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_body
scoreboard players operation @s ca.attr_aoe_damage_value += @s ca.attr_aoe_damage_value_bonus

scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_main
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_offh
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_head
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_chest
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_legs
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_feet
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_saddle
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_body
scoreboard players operation @s ca.attr_aoe_damage_percent += @s ca.attr_aoe_damage_percent_bonus


scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_resonance_lvl
scoreboard players operation $ench ca.attr_var *= $10 ca.CONSTANT
scoreboard players operation @s ca.attr_aoe_damage_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_aoe_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_aoe_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_aoe_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_aoe_damage_total = $total ca.attr_var

execute if score @s ca.attr_aoe_damage_value matches 0 run scoreboard players set @s ca.attr_aoe_damage_value -2000000
execute if score @s ca.attr_aoe_damage_percent matches 0 run scoreboard players set @s ca.attr_aoe_damage_percent -2000000
execute if score @s ca.attr_aoe_damage_total matches 0 run scoreboard players set @s ca.attr_aoe_damage_total -2000000


scoreboard players set @s ca.attr_status_inflict_damage_value 0
scoreboard players set @s ca.attr_status_inflict_damage_value_main 0
scoreboard players set @s ca.attr_status_inflict_damage_value_offh 0

scoreboard players set @s ca.attr_status_inflict_damage_percent 0
scoreboard players set @s ca.attr_status_inflict_damage_percent_main 0
scoreboard players set @s ca.attr_status_inflict_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_damage.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_damage.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_damage.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_damage.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_damage.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_damage.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_damage_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_main
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_offh
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_head
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_chest
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_legs
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_feet
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_saddle
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_body
scoreboard players operation @s ca.attr_status_inflict_damage_value += @s ca.attr_status_inflict_damage_value_bonus

scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_main
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_offh
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_head
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_chest
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_legs
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_feet
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_saddle
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_body
scoreboard players operation @s ca.attr_status_inflict_damage_percent += @s ca.attr_status_inflict_damage_percent_bonus

scoreboard players add @s ca.attr_status_inflict_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_status_inflict_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_status_inflict_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_status_inflict_damage_total = $total ca.attr_var

execute if score @s ca.attr_status_inflict_damage_value matches 0 run scoreboard players set @s ca.attr_status_inflict_damage_value -2000000
execute if score @s ca.attr_status_inflict_damage_percent matches 0 run scoreboard players set @s ca.attr_status_inflict_damage_percent -2000000
execute if score @s ca.attr_status_inflict_damage_total matches 0 run scoreboard players set @s ca.attr_status_inflict_damage_total -2000000


scoreboard players set @s ca.attr_status_inflict_duration_value 0
scoreboard players set @s ca.attr_status_inflict_duration_value_main 0
scoreboard players set @s ca.attr_status_inflict_duration_value_offh 0

scoreboard players set @s ca.attr_status_inflict_duration_percent 0
scoreboard players set @s ca.attr_status_inflict_duration_percent_main 0
scoreboard players set @s ca.attr_status_inflict_duration_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_duration.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_duration.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_duration.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_duration.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_duration.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_duration.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_duration_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_main
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_offh
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_head
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_chest
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_legs
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_feet
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_saddle
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_body
scoreboard players operation @s ca.attr_status_inflict_duration_value += @s ca.attr_status_inflict_duration_value_bonus

scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_main
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_offh
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_head
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_chest
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_legs
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_feet
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_saddle
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_body
scoreboard players operation @s ca.attr_status_inflict_duration_percent += @s ca.attr_status_inflict_duration_percent_bonus

scoreboard players add @s ca.attr_status_inflict_duration_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_status_inflict_duration_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_status_inflict_duration_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_status_inflict_duration_total = $total ca.attr_var

execute if score @s ca.attr_status_inflict_duration_value matches 0 run scoreboard players set @s ca.attr_status_inflict_duration_value -2000000
execute if score @s ca.attr_status_inflict_duration_percent matches 0 run scoreboard players set @s ca.attr_status_inflict_duration_percent -2000000
execute if score @s ca.attr_status_inflict_duration_total matches 0 run scoreboard players set @s ca.attr_status_inflict_duration_total -2000000


scoreboard players set @s ca.attr_status_inflict_potency_value 0
scoreboard players set @s ca.attr_status_inflict_potency_value_main 0
scoreboard players set @s ca.attr_status_inflict_potency_value_offh 0

scoreboard players set @s ca.attr_status_inflict_potency_percent 0
scoreboard players set @s ca.attr_status_inflict_potency_percent_main 0
scoreboard players set @s ca.attr_status_inflict_potency_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_potency.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_potency.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_inflict_potency.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_potency.base.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_potency.value.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_inflict_potency.percent.amount 100
scoreboard players operation @s ca.attr_status_inflict_potency_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_main
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_offh
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_head
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_chest
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_legs
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_feet
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_saddle
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_body
scoreboard players operation @s ca.attr_status_inflict_potency_value += @s ca.attr_status_inflict_potency_value_bonus

scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_main
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_offh
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_head
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_chest
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_legs
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_feet
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_saddle
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_body
scoreboard players operation @s ca.attr_status_inflict_potency_percent += @s ca.attr_status_inflict_potency_percent_bonus

scoreboard players add @s ca.attr_status_inflict_potency_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_status_inflict_potency_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_status_inflict_potency_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_status_inflict_potency_total = $total ca.attr_var

execute if score @s ca.attr_status_inflict_potency_value matches 0 run scoreboard players set @s ca.attr_status_inflict_potency_value -2000000
execute if score @s ca.attr_status_inflict_potency_percent matches 0 run scoreboard players set @s ca.attr_status_inflict_potency_percent -2000000
execute if score @s ca.attr_status_inflict_potency_total matches 0 run scoreboard players set @s ca.attr_status_inflict_potency_total -2000000


scoreboard players set @s ca.attr_status_apply_duration_value 0
scoreboard players set @s ca.attr_status_apply_duration_value_main 0
scoreboard players set @s ca.attr_status_apply_duration_value_offh 0

scoreboard players set @s ca.attr_status_apply_duration_percent 0
scoreboard players set @s ca.attr_status_apply_duration_percent_main 0
scoreboard players set @s ca.attr_status_apply_duration_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_duration.value.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_duration.percent.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_duration.base.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_duration.base.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_duration.value.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_duration.percent.amount 100
scoreboard players operation @s ca.attr_status_apply_duration_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_main
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_offh
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_head
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_chest
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_legs
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_feet
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_saddle
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_body
scoreboard players operation @s ca.attr_status_apply_duration_value += @s ca.attr_status_apply_duration_value_bonus

scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_main
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_offh
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_head
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_chest
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_legs
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_feet
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_saddle
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_body
scoreboard players operation @s ca.attr_status_apply_duration_percent += @s ca.attr_status_apply_duration_percent_bonus

scoreboard players add @s ca.attr_status_apply_duration_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_status_apply_duration_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_status_apply_duration_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_status_apply_duration_total = $total ca.attr_var

execute if score @s ca.attr_status_apply_duration_value matches 0 run scoreboard players set @s ca.attr_status_apply_duration_value -2000000
execute if score @s ca.attr_status_apply_duration_percent matches 0 run scoreboard players set @s ca.attr_status_apply_duration_percent -2000000
execute if score @s ca.attr_status_apply_duration_total matches 0 run scoreboard players set @s ca.attr_status_apply_duration_total -2000000


scoreboard players set @s ca.attr_status_apply_potency_value 0
scoreboard players set @s ca.attr_status_apply_potency_value_main 0
scoreboard players set @s ca.attr_status_apply_potency_value_offh 0

scoreboard players set @s ca.attr_status_apply_potency_percent 0
scoreboard players set @s ca.attr_status_apply_potency_percent_main 0
scoreboard players set @s ca.attr_status_apply_potency_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_potency.value.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_potency.percent.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.status_apply_potency.base.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_potency.base.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_potency.value.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.status_apply_potency.percent.amount 100
scoreboard players operation @s ca.attr_status_apply_potency_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_main
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_offh
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_head
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_chest
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_legs
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_feet
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_saddle
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_body
scoreboard players operation @s ca.attr_status_apply_potency_value += @s ca.attr_status_apply_potency_value_bonus

scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_main
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_offh
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_head
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_chest
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_legs
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_feet
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_saddle
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_body
scoreboard players operation @s ca.attr_status_apply_potency_percent += @s ca.attr_status_apply_potency_percent_bonus

scoreboard players add @s ca.attr_status_apply_potency_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_status_apply_potency_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_status_apply_potency_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_status_apply_potency_total = $total ca.attr_var

execute if score @s ca.attr_status_apply_potency_value matches 0 run scoreboard players set @s ca.attr_status_apply_potency_value -2000000
execute if score @s ca.attr_status_apply_potency_percent matches 0 run scoreboard players set @s ca.attr_status_apply_potency_percent -2000000
execute if score @s ca.attr_status_apply_potency_total matches 0 run scoreboard players set @s ca.attr_status_apply_potency_total -2000000


scoreboard players set @s ca.attr_healing_power_value 0
scoreboard players set @s ca.attr_healing_power_value_main 0
scoreboard players set @s ca.attr_healing_power_value_offh 0

scoreboard players set @s ca.attr_healing_power_percent 0
scoreboard players set @s ca.attr_healing_power_percent_main 0
scoreboard players set @s ca.attr_healing_power_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.healing_power.value.amount 100
scoreboard players operation @s ca.attr_healing_power_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.healing_power.percent.amount 100
scoreboard players operation @s ca.attr_healing_power_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.healing_power.base.amount 100
scoreboard players operation @s ca.attr_healing_power_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.healing_power.base.amount 100
scoreboard players operation @s ca.attr_healing_power_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.healing_power.value.amount 100
scoreboard players operation @s ca.attr_healing_power_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.healing_power.percent.amount 100
scoreboard players operation @s ca.attr_healing_power_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_main
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_offh
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_head
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_chest
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_legs
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_feet
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_saddle
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_body
scoreboard players operation @s ca.attr_healing_power_value += @s ca.attr_healing_power_value_bonus

scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_main
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_offh
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_head
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_chest
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_legs
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_feet
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_saddle
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_body
scoreboard players operation @s ca.attr_healing_power_percent += @s ca.attr_healing_power_percent_bonus


scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_invigorated_lvl
scoreboard players operation $ench ca.attr_var *= $10 ca.CONSTANT
scoreboard players operation @s ca.attr_healing_power_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_healing_power_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_healing_power_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_healing_power_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_healing_power_total = $total ca.attr_var

execute if score @s ca.attr_healing_power_value matches 0 run scoreboard players set @s ca.attr_healing_power_value -2000000
execute if score @s ca.attr_healing_power_percent matches 0 run scoreboard players set @s ca.attr_healing_power_percent -2000000
execute if score @s ca.attr_healing_power_total matches 0 run scoreboard players set @s ca.attr_healing_power_total -2000000


scoreboard players set @s ca.attr_lucky_hit_chance_value 0
scoreboard players set @s ca.attr_lucky_hit_chance_value_main 0
scoreboard players set @s ca.attr_lucky_hit_chance_value_offh 0

scoreboard players set @s ca.attr_lucky_hit_chance_percent 0
scoreboard players set @s ca.attr_lucky_hit_chance_percent_main 0
scoreboard players set @s ca.attr_lucky_hit_chance_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_lucky_hit_chance_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_main
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_offh
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_head
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_chest
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_legs
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_feet
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_saddle
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_body
scoreboard players operation @s ca.attr_lucky_hit_chance_value += @s ca.attr_lucky_hit_chance_value_bonus

scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_main
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_offh
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_head
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_chest
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_legs
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_feet
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_saddle
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_body
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += @s ca.attr_lucky_hit_chance_percent_bonus


scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_technique_lvl
scoreboard players operation $ench ca.attr_var *= $10 ca.CONSTANT
scoreboard players operation @s ca.attr_lucky_hit_chance_percent += $ench ca.attr_var

scoreboard players add @s ca.attr_lucky_hit_chance_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_lucky_hit_chance_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_lucky_hit_chance_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_lucky_hit_chance_total = $total ca.attr_var

execute if score @s ca.attr_lucky_hit_chance_value matches 0 run scoreboard players set @s ca.attr_lucky_hit_chance_value -2000000
execute if score @s ca.attr_lucky_hit_chance_percent matches 0 run scoreboard players set @s ca.attr_lucky_hit_chance_percent -2000000
execute if score @s ca.attr_lucky_hit_chance_total matches 0 run scoreboard players set @s ca.attr_lucky_hit_chance_total -2000000


scoreboard players set @s ca.attr_lucky_hit_damage_value 0
scoreboard players set @s ca.attr_lucky_hit_damage_value_main 0
scoreboard players set @s ca.attr_lucky_hit_damage_value_offh 0

scoreboard players set @s ca.attr_lucky_hit_damage_percent 0
scoreboard players set @s ca.attr_lucky_hit_damage_percent_main 0
scoreboard players set @s ca.attr_lucky_hit_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.lucky_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_lucky_hit_damage_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_main
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_offh
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_head
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_chest
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_legs
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_feet
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_saddle
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_body
scoreboard players operation @s ca.attr_lucky_hit_damage_value += @s ca.attr_lucky_hit_damage_value_bonus

scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_main
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_offh
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_head
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_chest
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_legs
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_feet
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_saddle
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_body
scoreboard players operation @s ca.attr_lucky_hit_damage_percent += @s ca.attr_lucky_hit_damage_percent_bonus

scoreboard players add @s ca.attr_lucky_hit_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_lucky_hit_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_lucky_hit_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_lucky_hit_damage_total = $total ca.attr_var

execute if score @s ca.attr_lucky_hit_damage_value matches 0 run scoreboard players set @s ca.attr_lucky_hit_damage_value -2000000
execute if score @s ca.attr_lucky_hit_damage_percent matches 0 run scoreboard players set @s ca.attr_lucky_hit_damage_percent -2000000
execute if score @s ca.attr_lucky_hit_damage_total matches 0 run scoreboard players set @s ca.attr_lucky_hit_damage_total -2000000


scoreboard players set @s ca.attr_restrike_hit_chance_value 0
scoreboard players set @s ca.attr_restrike_hit_chance_value_main 0
scoreboard players set @s ca.attr_restrike_hit_chance_value_offh 0

scoreboard players set @s ca.attr_restrike_hit_chance_percent 0
scoreboard players set @s ca.attr_restrike_hit_chance_percent_main 0
scoreboard players set @s ca.attr_restrike_hit_chance_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_chance_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_main
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_offh
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_head
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_chest
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_legs
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_feet
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_saddle
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_body
scoreboard players operation @s ca.attr_restrike_hit_chance_value += @s ca.attr_restrike_hit_chance_value_bonus

scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_main
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_offh
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_head
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_chest
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_legs
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_feet
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_saddle
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_body
scoreboard players operation @s ca.attr_restrike_hit_chance_percent += @s ca.attr_restrike_hit_chance_percent_bonus

execute if score @s ca.ench_echo_lvl matches 1.. run scoreboard players add @s ca.attr_restrike_hit_chance_value 100
execute if score @s ca.ench_echo_lvl matches 1.. if items entity @s weapon.mainhand #cartographer_core:ranged_weapons run scoreboard players add @s ca.attr_restrike_hit_chance_value 34
execute if score @s ca.ench_echo_lvl matches 1.. if items entity @s weapon.offhand #cartographer_core:ranged_weapons run scoreboard players add @s ca.attr_restrike_hit_chance_value 34

scoreboard players add @s ca.attr_restrike_hit_chance_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_restrike_hit_chance_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_restrike_hit_chance_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_restrike_hit_chance_total = $total ca.attr_var

execute if score @s ca.attr_restrike_hit_chance_value matches 0 run scoreboard players set @s ca.attr_restrike_hit_chance_value -2000000
execute if score @s ca.attr_restrike_hit_chance_percent matches 0 run scoreboard players set @s ca.attr_restrike_hit_chance_percent -2000000
execute if score @s ca.attr_restrike_hit_chance_total matches 0 run scoreboard players set @s ca.attr_restrike_hit_chance_total -2000000


scoreboard players set @s ca.attr_restrike_hit_damage_value 0
scoreboard players set @s ca.attr_restrike_hit_damage_value_main 0
scoreboard players set @s ca.attr_restrike_hit_damage_value_offh 0

scoreboard players set @s ca.attr_restrike_hit_damage_percent 0
scoreboard players set @s ca.attr_restrike_hit_damage_percent_main 0
scoreboard players set @s ca.attr_restrike_hit_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_damage_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_main
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_offh
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_head
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_chest
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_legs
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_feet
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_saddle
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_body
scoreboard players operation @s ca.attr_restrike_hit_damage_value += @s ca.attr_restrike_hit_damage_value_bonus

scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_main
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_offh
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_head
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_chest
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_legs
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_feet
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_saddle
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_body
scoreboard players operation @s ca.attr_restrike_hit_damage_percent += @s ca.attr_restrike_hit_damage_percent_bonus

scoreboard players add @s ca.attr_restrike_hit_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_restrike_hit_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_restrike_hit_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_restrike_hit_damage_total = $total ca.attr_var

execute if score @s ca.attr_restrike_hit_damage_value matches 0 run scoreboard players set @s ca.attr_restrike_hit_damage_value -2000000
execute if score @s ca.attr_restrike_hit_damage_percent matches 0 run scoreboard players set @s ca.attr_restrike_hit_damage_percent -2000000
execute if score @s ca.attr_restrike_hit_damage_total matches 0 run scoreboard players set @s ca.attr_restrike_hit_damage_total -2000000


scoreboard players set @s ca.attr_restrike_hit_amount_value 0
scoreboard players set @s ca.attr_restrike_hit_amount_value_main 0
scoreboard players set @s ca.attr_restrike_hit_amount_value_offh 0

scoreboard players set @s ca.attr_restrike_hit_amount_percent 0
scoreboard players set @s ca.attr_restrike_hit_amount_percent_main 0
scoreboard players set @s ca.attr_restrike_hit_amount_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_amount.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_amount_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_main
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_offh
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_head
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_chest
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_legs
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_feet
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_saddle
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_body
scoreboard players operation @s ca.attr_restrike_hit_amount_value += @s ca.attr_restrike_hit_amount_value_bonus

scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_main
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_offh
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_head
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_chest
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_legs
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_feet
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_saddle
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_body
scoreboard players operation @s ca.attr_restrike_hit_amount_percent += @s ca.attr_restrike_hit_amount_percent_bonus

scoreboard players add @s ca.attr_restrike_hit_amount_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_restrike_hit_amount_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_echo_lvl
execute if score @s ca.ench_echo_lvl matches 1.. run scoreboard players remove $ench ca.attr_var 1
scoreboard players operation $ench ca.attr_var *= $100 ca.CONSTANT
scoreboard players operation @s ca.attr_restrike_hit_amount_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_restrike_hit_amount_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_restrike_hit_amount_total = $total ca.attr_var

execute if score @s ca.attr_restrike_hit_amount_value matches 0 run scoreboard players set @s ca.attr_restrike_hit_amount_value -2000000
execute if score @s ca.attr_restrike_hit_amount_percent matches 0 run scoreboard players set @s ca.attr_restrike_hit_amount_percent -2000000
execute if score @s ca.attr_restrike_hit_amount_total matches 0 run scoreboard players set @s ca.attr_restrike_hit_amount_total -2000000


scoreboard players set @s ca.attr_restrike_hit_rate_value 0
scoreboard players set @s ca.attr_restrike_hit_rate_value_main 0
scoreboard players set @s ca.attr_restrike_hit_rate_value_offh 0

scoreboard players set @s ca.attr_restrike_hit_rate_percent 0
scoreboard players set @s ca.attr_restrike_hit_rate_percent_main 0
scoreboard players set @s ca.attr_restrike_hit_rate_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.base.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.value.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.restrike_hit_rate.percent.amount 100
scoreboard players operation @s ca.attr_restrike_hit_rate_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_main
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_offh
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_head
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_chest
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_legs
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_feet
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_saddle
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_body
scoreboard players operation @s ca.attr_restrike_hit_rate_value += @s ca.attr_restrike_hit_rate_value_bonus

scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_main
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_offh
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_head
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_chest
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_legs
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_feet
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_saddle
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_body
scoreboard players operation @s ca.attr_restrike_hit_rate_percent += @s ca.attr_restrike_hit_rate_percent_bonus

scoreboard players add @s ca.attr_restrike_hit_rate_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_restrike_hit_rate_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_echo_lvl
execute if score $ench ca.attr_var matches 1.. run scoreboard players remove $ench ca.attr_var 1
scoreboard players operation $ench ca.attr_var /= $2 ca.CONSTANT
scoreboard players operation @s ca.attr_restrike_hit_rate_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_restrike_hit_rate_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_restrike_hit_rate_total = $total ca.attr_var

execute if score @s ca.attr_restrike_hit_rate_value matches 0 run scoreboard players set @s ca.attr_restrike_hit_rate_value -2000000
execute if score @s ca.attr_restrike_hit_rate_percent matches 0 run scoreboard players set @s ca.attr_restrike_hit_rate_percent -2000000
execute if score @s ca.attr_restrike_hit_rate_total matches 0 run scoreboard players set @s ca.attr_restrike_hit_rate_total -2000000


scoreboard players set @s ca.attr_chaining_hit_chance_value 0
scoreboard players set @s ca.attr_chaining_hit_chance_value_main 0
scoreboard players set @s ca.attr_chaining_hit_chance_value_offh 0

scoreboard players set @s ca.attr_chaining_hit_chance_percent 0
scoreboard players set @s ca.attr_chaining_hit_chance_percent_main 0
scoreboard players set @s ca.attr_chaining_hit_chance_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_chance.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_chance_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_main
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_offh
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_head
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_chest
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_legs
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_feet
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_saddle
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_body
scoreboard players operation @s ca.attr_chaining_hit_chance_value += @s ca.attr_chaining_hit_chance_value_bonus

scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_main
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_offh
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_head
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_chest
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_legs
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_feet
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_saddle
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_body
scoreboard players operation @s ca.attr_chaining_hit_chance_percent += @s ca.attr_chaining_hit_chance_percent_bonus

scoreboard players add @s ca.attr_chaining_hit_chance_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_chaining_hit_chance_percent

execute if score @s ca.ench_reverb_lvl matches 1.. run scoreboard players add @s ca.attr_chaining_hit_chance_value 100
execute if score @s ca.ench_reverb_lvl matches 1.. if items entity @s weapon.mainhand #cartographer_core:ranged_weapons run scoreboard players add @s ca.attr_chaining_hit_chance_value 34
execute if score @s ca.ench_reverb_lvl matches 1.. if items entity @s weapon.offhand #cartographer_core:ranged_weapons run scoreboard players add @s ca.attr_chaining_hit_chance_value 34

scoreboard players operation $total ca.attr_var = @s ca.attr_chaining_hit_chance_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_chaining_hit_chance_total = $total ca.attr_var

execute if score @s ca.attr_chaining_hit_chance_value matches 0 run scoreboard players set @s ca.attr_chaining_hit_chance_value -2000000
execute if score @s ca.attr_chaining_hit_chance_percent matches 0 run scoreboard players set @s ca.attr_chaining_hit_chance_percent -2000000
execute if score @s ca.attr_chaining_hit_chance_total matches 0 run scoreboard players set @s ca.attr_chaining_hit_chance_total -2000000


scoreboard players set @s ca.attr_chaining_hit_damage_value 0
scoreboard players set @s ca.attr_chaining_hit_damage_value_main 0
scoreboard players set @s ca.attr_chaining_hit_damage_value_offh 0

scoreboard players set @s ca.attr_chaining_hit_damage_percent 0
scoreboard players set @s ca.attr_chaining_hit_damage_percent_main 0
scoreboard players set @s ca.attr_chaining_hit_damage_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_damage.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_damage_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_main
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_offh
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_head
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_chest
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_legs
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_feet
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_saddle
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_body
scoreboard players operation @s ca.attr_chaining_hit_damage_value += @s ca.attr_chaining_hit_damage_value_bonus

scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_main
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_offh
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_head
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_chest
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_legs
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_feet
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_saddle
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_body
scoreboard players operation @s ca.attr_chaining_hit_damage_percent += @s ca.attr_chaining_hit_damage_percent_bonus

scoreboard players add @s ca.attr_chaining_hit_damage_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_chaining_hit_damage_percent

scoreboard players operation $total ca.attr_var = @s ca.attr_chaining_hit_damage_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_chaining_hit_damage_total = $total ca.attr_var

execute if score @s ca.attr_chaining_hit_damage_value matches 0 run scoreboard players set @s ca.attr_chaining_hit_damage_value -2000000
execute if score @s ca.attr_chaining_hit_damage_percent matches 0 run scoreboard players set @s ca.attr_chaining_hit_damage_percent -2000000
execute if score @s ca.attr_chaining_hit_damage_total matches 0 run scoreboard players set @s ca.attr_chaining_hit_damage_total -2000000


scoreboard players set @s ca.attr_chaining_hit_amount_value 0
scoreboard players set @s ca.attr_chaining_hit_amount_value_main 0
scoreboard players set @s ca.attr_chaining_hit_amount_value_offh 0

scoreboard players set @s ca.attr_chaining_hit_amount_percent 0
scoreboard players set @s ca.attr_chaining_hit_amount_percent_main 0
scoreboard players set @s ca.attr_chaining_hit_amount_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.base.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.value.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.chaining_hit_amount.percent.amount 100
scoreboard players operation @s ca.attr_chaining_hit_amount_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_main
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_offh
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_head
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_chest
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_legs
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_feet
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_saddle
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_body
scoreboard players operation @s ca.attr_chaining_hit_amount_value += @s ca.attr_chaining_hit_amount_value_bonus

scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_main
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_offh
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_head
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_chest
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_legs
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_feet
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_saddle
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_body
scoreboard players operation @s ca.attr_chaining_hit_amount_percent += @s ca.attr_chaining_hit_amount_percent_bonus

scoreboard players add @s ca.attr_chaining_hit_amount_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_chaining_hit_amount_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_reverb_lvl
execute if score @s ca.ench_reverb_lvl matches 1.. run scoreboard players remove $ench ca.attr_var 1
scoreboard players operation $ench ca.attr_var *= $100 ca.CONSTANT
scoreboard players operation @s ca.attr_chaining_hit_amount_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_chaining_hit_amount_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_chaining_hit_amount_total = $total ca.attr_var

execute if score @s ca.attr_chaining_hit_amount_value matches 0 run scoreboard players set @s ca.attr_chaining_hit_amount_value -2000000
execute if score @s ca.attr_chaining_hit_amount_percent matches 0 run scoreboard players set @s ca.attr_chaining_hit_amount_percent -2000000
execute if score @s ca.attr_chaining_hit_amount_total matches 0 run scoreboard players set @s ca.attr_chaining_hit_amount_total -2000000


scoreboard players set @s ca.attr_life_drain_chance_value 0
scoreboard players set @s ca.attr_life_drain_chance_value_main 0
scoreboard players set @s ca.attr_life_drain_chance_value_offh 0

scoreboard players set @s ca.attr_life_drain_chance_percent 0
scoreboard players set @s ca.attr_life_drain_chance_percent_main 0
scoreboard players set @s ca.attr_life_drain_chance_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_chance.value.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_chance.percent.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_chance.base.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_chance.base.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_chance.value.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_chance.percent.amount 100
scoreboard players operation @s ca.attr_life_drain_chance_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_main
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_offh
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_head
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_chest
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_legs
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_feet
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_saddle
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_body
scoreboard players operation @s ca.attr_life_drain_chance_value += @s ca.attr_life_drain_chance_value_bonus

scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_main
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_offh
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_head
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_chest
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_legs
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_feet
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_saddle
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_body
scoreboard players operation @s ca.attr_life_drain_chance_percent += @s ca.attr_life_drain_chance_percent_bonus

scoreboard players add @s ca.attr_life_drain_chance_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_life_drain_chance_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_lifesteal_lvl
scoreboard players operation $ench ca.attr_var *= $5 ca.CONSTANT
scoreboard players operation @s ca.attr_life_drain_chance_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_life_drain_chance_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_life_drain_chance_total = $total ca.attr_var

execute if score @s ca.attr_life_drain_chance_value matches 0 run scoreboard players set @s ca.attr_life_drain_chance_value -2000000
execute if score @s ca.attr_life_drain_chance_percent matches 0 run scoreboard players set @s ca.attr_life_drain_chance_percent -2000000
execute if score @s ca.attr_life_drain_chance_total matches 0 run scoreboard players set @s ca.attr_life_drain_chance_total -2000000


scoreboard players set @s ca.attr_life_drain_amount_value 0
scoreboard players set @s ca.attr_life_drain_amount_value_main 0
scoreboard players set @s ca.attr_life_drain_amount_value_offh 0

scoreboard players set @s ca.attr_life_drain_amount_percent 0
scoreboard players set @s ca.attr_life_drain_amount_percent_main 0
scoreboard players set @s ca.attr_life_drain_amount_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_amount.value.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_amount.percent.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.life_drain_amount.base.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_amount.base.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_amount.value.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.life_drain_amount.percent.amount 100
scoreboard players operation @s ca.attr_life_drain_amount_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_main
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_offh
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_head
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_chest
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_legs
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_feet
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_saddle
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_body
scoreboard players operation @s ca.attr_life_drain_amount_value += @s ca.attr_life_drain_amount_value_bonus

scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_main
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_offh
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_head
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_chest
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_legs
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_feet
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_saddle
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_body
scoreboard players operation @s ca.attr_life_drain_amount_percent += @s ca.attr_life_drain_amount_percent_bonus

scoreboard players add @s ca.attr_life_drain_amount_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_life_drain_amount_percent

execute if score @s ca.ench_lifesteal_lvl matches 1.. run scoreboard players add @s ca.attr_life_drain_amount_value 100

scoreboard players operation $total ca.attr_var = @s ca.attr_life_drain_amount_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_life_drain_amount_total = $total ca.attr_var

execute if score @s ca.attr_life_drain_amount_value matches 0 run scoreboard players set @s ca.attr_life_drain_amount_value -2000000
execute if score @s ca.attr_life_drain_amount_percent matches 0 run scoreboard players set @s ca.attr_life_drain_amount_percent -2000000
execute if score @s ca.attr_life_drain_amount_total matches 0 run scoreboard players set @s ca.attr_life_drain_amount_total -2000000


scoreboard players set @s ca.attr_extra_jump_count_value 0
scoreboard players set @s ca.attr_extra_jump_count_value_main 0
scoreboard players set @s ca.attr_extra_jump_count_value_offh 0

scoreboard players set @s ca.attr_extra_jump_count_percent 0
scoreboard players set @s ca.attr_extra_jump_count_percent_main 0
scoreboard players set @s ca.attr_extra_jump_count_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.extra_jump_count.value.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.extra_jump_count.percent.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.extra_jump_count.base.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.extra_jump_count.base.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.extra_jump_count.value.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.extra_jump_count.percent.amount 100
scoreboard players operation @s ca.attr_extra_jump_count_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_main
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_offh
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_head
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_chest
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_legs
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_feet
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_saddle
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_body
scoreboard players operation @s ca.attr_extra_jump_count_value += @s ca.attr_extra_jump_count_value_bonus

scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_main
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_offh
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_head
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_chest
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_legs
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_feet
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_saddle
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_body
scoreboard players operation @s ca.attr_extra_jump_count_percent += @s ca.attr_extra_jump_count_percent_bonus

scoreboard players add @s ca.attr_extra_jump_count_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_extra_jump_count_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_cloudstep_lvl
scoreboard players operation $ench ca.attr_var *= $100 ca.CONSTANT
scoreboard players operation @s ca.attr_extra_jump_count_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_extra_jump_count_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_extra_jump_count_total = $total ca.attr_var

execute if score @s ca.attr_extra_jump_count_value matches 0 run scoreboard players set @s ca.attr_extra_jump_count_value -2000000
execute if score @s ca.attr_extra_jump_count_percent matches 0 run scoreboard players set @s ca.attr_extra_jump_count_percent -2000000
execute if score @s ca.attr_extra_jump_count_total matches 0 run scoreboard players set @s ca.attr_extra_jump_count_total -2000000


scoreboard players set @s ca.attr_airdash_count_value 0
scoreboard players set @s ca.attr_airdash_count_value_main 0
scoreboard players set @s ca.attr_airdash_count_value_offh 0

scoreboard players set @s ca.attr_airdash_count_percent 0
scoreboard players set @s ca.attr_airdash_count_percent_main 0
scoreboard players set @s ca.attr_airdash_count_percent_offh 0

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.airdash_count.value.amount 100
scoreboard players operation @s ca.attr_airdash_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.airdash_count.percent.amount 100
scoreboard players operation @s ca.attr_airdash_count_percent_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.airdash_count.base.amount 100
scoreboard players operation @s ca.attr_airdash_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.airdash_count.base.amount 100
scoreboard players operation @s ca.attr_airdash_count_value_main += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.airdash_count.value.amount 100
scoreboard players operation @s ca.attr_airdash_count_value_offh += $attr ca.attr_var

scoreboard players set $attr ca.attr_var 0
execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.airdash_count.percent.amount 100
scoreboard players operation @s ca.attr_airdash_count_percent_offh += $attr ca.attr_var


scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_main
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_offh
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_head
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_chest
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_legs
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_feet
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_saddle
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_body
scoreboard players operation @s ca.attr_airdash_count_value += @s ca.attr_airdash_count_value_bonus

scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_main
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_offh
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_head
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_chest
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_legs
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_feet
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_saddle
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_body
scoreboard players operation @s ca.attr_airdash_count_percent += @s ca.attr_airdash_count_percent_bonus

scoreboard players add @s ca.attr_airdash_count_percent 100
scoreboard players operation $percent ca.attr_var = @s ca.attr_airdash_count_percent

scoreboard players set $ench ca.attr_var 0
scoreboard players operation $ench ca.attr_var = @s ca.ench_windborn_lvl
scoreboard players operation $ench ca.attr_var *= $100 ca.CONSTANT
scoreboard players operation @s ca.attr_airdash_count_value += $ench ca.attr_var

scoreboard players operation $total ca.attr_var = @s ca.attr_airdash_count_value

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_airdash_count_total = $total ca.attr_var

execute if score @s ca.attr_airdash_count_value matches 0 run scoreboard players set @s ca.attr_airdash_count_value -2000000
execute if score @s ca.attr_airdash_count_percent matches 0 run scoreboard players set @s ca.attr_airdash_count_percent -2000000
execute if score @s ca.attr_airdash_count_total matches 0 run scoreboard players set @s ca.attr_airdash_count_total -2000000


#scoreboard players set @s ca.attr_adaptive_damage_value 0
#scoreboard players set @s ca.attr_adaptive_damage_value_main 0
#scoreboard players set @s ca.attr_adaptive_damage_value_offh 0
#
#scoreboard players set @s ca.attr_adaptive_damage_percent 0
#scoreboard players set @s ca.attr_adaptive_damage_percent_main 0
#scoreboard players set @s ca.attr_adaptive_damage_percent_offh 0
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.adaptive_damage.value.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.adaptive_damage.percent.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_percent_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.adaptive_damage.base.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.adaptive_damage.base.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.adaptive_damage.value.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_value_offh += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.adaptive_damage.percent.amount 100
#scoreboard players operation @s ca.attr_adaptive_damage_percent_offh += $attr ca.attr_var
#
#
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_main
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_offh
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_head
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_chest
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_legs
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_feet
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_saddle
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_body
#scoreboard players operation @s ca.attr_adaptive_damage_value += @s ca.attr_adaptive_damage_value_bonus
#
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_main
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_offh
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_head
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_chest
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_legs
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_feet
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_saddle
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_body
#scoreboard players operation @s ca.attr_adaptive_damage_percent += @s ca.attr_adaptive_damage_percent_bonus
#
#scoreboard players add @s ca.attr_adaptive_damage_percent 100
#scoreboard players operation $percent ca.attr_var = @s ca.attr_adaptive_damage_percent
#
#scoreboard players operation $total ca.attr_var = @s ca.attr_adaptive_damage_value
#
#scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
#scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT
#
#scoreboard players operation @s ca.attr_adaptive_damage_total = $total ca.attr_var
#
#execute if score @s ca.attr_adaptive_damage_value matches 0 run scoreboard players set @s ca.attr_adaptive_damage_value -2000000
#execute if score @s ca.attr_adaptive_damage_percent matches 0 run scoreboard players set @s ca.attr_adaptive_damage_percent -2000000
#execute if score @s ca.attr_adaptive_damage_total matches 0 run scoreboard players set @s ca.attr_adaptive_damage_total -2000000
#
#
#scoreboard players set @s ca.attr_total_damage_value 0
#scoreboard players set @s ca.attr_total_damage_value_main 0
#scoreboard players set @s ca.attr_total_damage_value_offh 0
#
#scoreboard players set @s ca.attr_total_damage_percent 0
#scoreboard players set @s ca.attr_total_damage_percent_main 0
#scoreboard players set @s ca.attr_total_damage_percent_offh 0
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.total_damage.value.amount 100
#scoreboard players operation @s ca.attr_total_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.total_damage.percent.amount 100
#scoreboard players operation @s ca.attr_total_damage_percent_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.main.components.minecraft:custom_data.custom_attributes.total_damage.base.amount 100
#scoreboard players operation @s ca.attr_total_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute unless items entity @s weapon.mainhand #cartographer_core:enchant_support/ranged_weapon store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.total_damage.base.amount 100
#scoreboard players operation @s ca.attr_total_damage_value_main += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.total_damage.value.amount 100
#scoreboard players operation @s ca.attr_total_damage_value_offh += $attr ca.attr_var
#
#scoreboard players set $attr ca.attr_var 0
#execute store result score $attr ca.attr_var run data get storage cartographer_core:player_equip data.offh.components.minecraft:custom_data.custom_attributes.total_damage.percent.amount 100
#scoreboard players operation @s ca.attr_total_damage_percent_offh += $attr ca.attr_var
#
#
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_main
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_offh
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_head
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_chest
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_legs
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_feet
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_saddle
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_body
#scoreboard players operation @s ca.attr_total_damage_value += @s ca.attr_total_damage_value_bonus
#
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_main
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_offh
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_head
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_chest
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_legs
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_feet
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_saddle
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_body
#scoreboard players operation @s ca.attr_total_damage_percent += @s ca.attr_total_damage_percent_bonus
#
#scoreboard players add @s ca.attr_total_damage_percent 100
#scoreboard players operation $percent ca.attr_var = @s ca.attr_total_damage_percent
#
#scoreboard players operation $total ca.attr_var = @s ca.attr_total_damage_value
#
#scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
#scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT
#
#scoreboard players operation @s ca.attr_total_damage_total = $total ca.attr_var
#
#execute if score @s ca.attr_total_damage_value matches 0 run scoreboard players set @s ca.attr_total_damage_value -2000000
#execute if score @s ca.attr_total_damage_percent matches 0 run scoreboard players set @s ca.attr_total_damage_percent -2000000
#execute if score @s ca.attr_total_damage_total matches 0 run scoreboard players set @s ca.attr_total_damage_total -2000000
#
