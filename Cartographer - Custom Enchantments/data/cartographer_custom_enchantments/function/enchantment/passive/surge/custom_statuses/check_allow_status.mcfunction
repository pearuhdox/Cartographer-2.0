scoreboard players set $allow_statuses_target ca.ench_surge_lvl 0
scoreboard players set $allow_statuses_self ca.ench_surge_lvl 0
execute if entity @s[tag=ca.apply_status_surge_self] run scoreboard players set $allow_statuses_self ca.ench_surge_lvl 1
execute if entity @s[tag=ca.apply_status_surge_target] run scoreboard players set $allow_statuses_target ca.ench_surge_lvl 1