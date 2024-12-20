scoreboard players set $allow_statuses_target ca.ench_thorns_lvl 0
scoreboard players set $allow_statuses_self ca.ench_thorns_lvl 0
execute if entity @s[tag=ca.apply_status_thorns_self] run scoreboard players set $allow_statuses_self ca.ench_thorns_lvl 1
execute if entity @s[tag=ca.apply_status_thorns_target] run scoreboard players set $allow_statuses_target ca.ench_thorns_lvl 1