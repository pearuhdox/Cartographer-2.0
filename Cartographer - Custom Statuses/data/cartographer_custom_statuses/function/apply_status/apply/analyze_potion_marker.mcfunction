data modify storage cartographer:custom_statuses active_projectile set value {}
data modify storage cartographer:custom_statuses active_projectile set from entity @s data.status_data

execute if entity @s[tag=ca.apply_status_potion_throw_self] run scoreboard players set $potion_throw_self ca.apply_status_check 1
execute if entity @s[tag=ca.apply_status_potion_throw_target] run scoreboard players set $potion_throw_target ca.apply_status_check 1