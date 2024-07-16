scoreboard players set $potion_throw_self ca.apply_status_check 0
scoreboard players set $potion_throw_target ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/analyze_potion_marker

execute if entity @s[tag=ca.is_lingering] run function cartographer_custom_statuses:apply_status/apply/create_aec

execute unless entity @s[tag=ca.is_lingering] as @a[distance=..3] at @s if score $potion_throw_self ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"potion_land",type:"self"}
execute unless entity @s[tag=ca.is_lingering] as @e[type=#bb:hostile,distance=..3] at @s if score $potion_throw_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"potion_land",type:"target"}