execute store result score $status_inflict_duration ca.attr_var run data get storage cartographer:custom_attributes status_inflict_duration 1

scoreboard players operation $status_inflict_duration ca.attr_var += @s ca.attr_status_inflict_duration_value

execute if score @s ca.attr_status_inflict_duration_percent matches -1999999.. run scoreboard players operation $status_inflict_duration ca.attr_var *= @s ca.attr_status_inflict_duration_percent
execute if score @s ca.attr_status_inflict_duration_percent matches -1999999.. run scoreboard players operation $status_inflict_duration ca.attr_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_attributes status_inflict_duration double 1 run scoreboard players get $status_inflict_duration ca.attr_var