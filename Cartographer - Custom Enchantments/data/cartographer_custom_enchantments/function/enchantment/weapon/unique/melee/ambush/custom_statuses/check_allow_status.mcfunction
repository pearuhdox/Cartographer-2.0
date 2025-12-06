scoreboard players set $allow_statuses_target ca.ench_ambush_lvl 0
scoreboard players set $allow_statuses_self ca.ench_ambush_lvl 0
execute if entity @s[tag=ca.apply_status_ambush_self] run scoreboard players set $allow_statuses_self ca.ench_ambush_lvl 1
execute if entity @s[tag=ca.apply_status_ambush_target] run scoreboard players set $allow_statuses_target ca.ench_ambush_lvl 1