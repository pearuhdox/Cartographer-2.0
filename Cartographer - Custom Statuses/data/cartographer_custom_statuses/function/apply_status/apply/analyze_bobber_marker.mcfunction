data modify storage cartographer:custom_statuses active_projectile set value {}
data modify storage cartographer:custom_statuses active_projectile set from storage cartographer_core:fishing_bobber_data data

execute if entity @s[tag=ca.apply_status_ranged_hit_self] run scoreboard players set $bobber_throw_self ca.apply_status_check 1
execute if entity @s[tag=ca.apply_status_ranged_hit_target] run scoreboard players set $bobber_throw_target ca.apply_status_check 1