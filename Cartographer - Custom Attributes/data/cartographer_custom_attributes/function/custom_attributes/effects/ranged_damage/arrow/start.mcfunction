scoreboard players set $arrow_val ca.attr_ranged_damage_value 0

execute if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players operation $arrow_val ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value
execute on origin if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players operation $arrow_val ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_value

execute on origin if score @s ca.attr_ranged_damage_percent matches -1999999.. unless score @s ca.attr_ranged_damage_value matches -1999999.. if entity @s[type=#minecraft:skeletons] run scoreboard players add $arrow_val ca.attr_ranged_damage_value 400

scoreboard players set $arrow_val_perc ca.attr_ranged_damage_value 0
execute on origin if score @s ca.attr_ranged_damage_percent matches -1999999.. run scoreboard players operation $arrow_val_perc ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_percent
execute if score @s ca.attr_ranged_damage_percent matches -1999999.. run scoreboard players operation $arrow_val_perc ca.attr_ranged_damage_value += @s ca.attr_ranged_damage_percent

scoreboard players operation $arrow_val ca.attr_ranged_damage_value *= $arrow_val_perc ca.attr_ranged_damage_value
scoreboard players operation $arrow_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT


#execute store result score $dmg_data_mult ca.attr_ranged_damage_value run data get entity @s damage 100
#scoreboard players operation $dmg_data_mult ca.attr_ranged_damage_value /= $2 ca.CONSTANT

#scoreboard players operation $arrow_val ca.attr_ranged_damage_value *= $dmg_data_mult ca.attr_ranged_damage_value
#scoreboard players operation $arrow_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT

execute store result score $power_val ca.attr_ranged_damage_value run data get entity @s weapon.components.minecraft:enchantments.minecraft:power
data remove entity @s weapon.components.minecraft:enchantments.minecraft:power

scoreboard players set $power_mult ca.attr_ranged_damage_value 0
scoreboard players operation $power_val ca.attr_ranged_damage_value *= $25 ca.CONSTANT
scoreboard players operation $power_mult ca.attr_ranged_damage_value = $power_val ca.attr_ranged_damage_value
execute if score $power_val ca.attr_ranged_damage_value matches 1.. run scoreboard players add $power_mult ca.attr_ranged_damage_value 125
execute unless score $power_val ca.attr_ranged_damage_value matches 1.. run scoreboard players add $power_mult ca.attr_ranged_damage_value 100

scoreboard players operation $arrow_val ca.attr_ranged_damage_value *= $power_mult ca.attr_ranged_damage_value
scoreboard players operation $arrow_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT

execute on origin if entity @s[type=player] if score @s ca.is_drawing_bow matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/arrow/player_draw_time

scoreboard players operation @s ca.attr_ranged_damage_total = $arrow_val ca.attr_ranged_damage_value

data modify entity @s damage set value 0.0001d

execute store result score $crit ca.attr_ranged_damage_value run data get entity @s crit
execute if score $crit ca.attr_ranged_damage_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_attribute/arrow_crit",duration:100,delay:0,parameters:{prev_x:0,prev_y:0,prev_z:0},merge_behavior:"none"}
data modify entity @s crit set value 0b