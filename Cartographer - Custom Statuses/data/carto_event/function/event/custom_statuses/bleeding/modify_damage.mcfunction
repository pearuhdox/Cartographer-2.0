execute store result score $status_damage ca.status_var run data get storage carto_event current[-1].parameters.amount 100

execute if score @s ca.attr_status_inflict_damage_value matches -1999999.. run scoreboard players operation $status_damage ca.status_var += @s ca.attr_status_inflict_damage_value

execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $status_damage ca.status_var *= @s ca.attr_status_inflict_damage_percent
execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $status_damage ca.status_var /= $100 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.amount int 0.01 run scoreboard players get $status_damage ca.status_var