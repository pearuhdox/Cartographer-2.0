scoreboard players set $potency_modify ca.status_var 0
execute if score @s ca.attr_status_inflict_potency_value matches -1999999.. run scoreboard players operation $potency_modify ca.status_var = @s ca.attr_status_inflict_potency_value
scoreboard players operation $potency_modify ca.status_var /= $100 ca.CONSTANT

$scoreboard players add $potency_modify ca.status_var $(amplifier)

execute if score @s ca.attr_status_inflict_potency_percent matches -1999999.. run scoreboard players operation $potency_modify ca.status_var *= @s ca.attr_status_inflict_potency_percent
execute if score @s ca.attr_status_inflict_potency_percent matches -1999999.. run scoreboard players operation $potency_modify ca.status_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].amplifier int 1 run scoreboard players get $potency_modify ca.status_var