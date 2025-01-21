scoreboard players set $allow_statuses_target ca.ench_slamming_lvl 0
scoreboard players set $allow_statuses_self ca.ench_slamming_lvl 0
execute if entity @s[tag=ca.apply_status_special_attack_self] run scoreboard players set $allow_statuses_self ca.ench_slamming_lvl 1
execute if entity @s[tag=ca.apply_status_special_attack_target] run scoreboard players set $allow_statuses_target ca.ench_slamming_lvl 1