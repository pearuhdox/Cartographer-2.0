data modify storage cartographer:custom_statuses active_projectile set value {}
execute on passengers if entity @s[tag=ca.projectile_checker,type=marker] run data modify storage cartographer:custom_statuses active_projectile set from entity @s data.status_data

execute if entity @s[tag=ca.apply_status_ranged_hit_self] run scoreboard players set $ranged_hit_self ca.apply_status_check 1
execute if entity @s[tag=ca.apply_status_ranged_hit_target] run scoreboard players set $ranged_hit_target ca.apply_status_check 1