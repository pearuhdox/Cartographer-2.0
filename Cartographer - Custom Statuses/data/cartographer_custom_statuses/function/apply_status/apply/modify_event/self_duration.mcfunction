scoreboard players set $duration_modify ca.status_var 0
execute if score @s ca.attr_status_apply_duration_value matches -1999999.. run scoreboard players operation $duration_modify ca.status_var = @s ca.attr_status_apply_duration_value
scoreboard players operation $duration_modify ca.status_var /= $100 ca.CONSTANT

$scoreboard players add $duration_modify ca.status_var $(duration)

execute if score @s ca.attr_status_apply_duration_percent matches -1999999.. run scoreboard players operation $duration_modify ca.status_var *= @s ca.attr_status_apply_duration_percent
execute if score @s ca.attr_status_apply_duration_percent matches -1999999.. run scoreboard players operation $duration_modify ca.status_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].duration int 1 run scoreboard players get $duration_modify ca.status_var