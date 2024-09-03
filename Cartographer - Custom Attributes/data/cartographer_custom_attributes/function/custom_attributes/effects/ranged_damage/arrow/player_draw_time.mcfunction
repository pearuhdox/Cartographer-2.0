scoreboard players operation $draw_time ca.attr_ranged_damage_value = @s ca.draw_bow_time

execute if score $draw_time ca.attr_ranged_damage_value matches 21.. run scoreboard players set $draw_time ca.attr_ranged_damage_value 20

scoreboard players operation $arrow_val ca.attr_ranged_damage_value *= $draw_time ca.attr_ranged_damage_value
scoreboard players operation $arrow_val ca.attr_ranged_damage_value /= $20 ca.CONSTANT
