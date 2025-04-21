execute on origin run scoreboard players operation $throwable_val ca.attr_ranged_damage_value = @s ca.attr_ranged_damage_value


execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $throwable_val ca.attr_ranged_damage_value *= @s ca.attr_ranged_damage_percent
execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $throwable_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT


scoreboard players operation @s ca.attr_ranged_damage_total = $throwable_val ca.attr_ranged_damage_value


#execute store result score $crit ca.attr_ranged_damage_value run data get entity @s crit
#execute if score $crit ca.attr_ranged_damage_value matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_attribute/arrow_crit",duration:100,delay:0,parameters:{prev_x:0,prev_y:0,prev_z:0},merge_behavior:"none"}
#data modify entity @s crit set value 0b