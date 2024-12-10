function cartographer_custom_statuses:apply_status/apply/set_target

$execute if score $is_player ca.apply_status_check matches 1.. unless entity @s[type=player] as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"self"}
execute if score $is_player ca.apply_status_check matches 1.. unless entity @s[type=player] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"target"}

$execute if score $is_entity ca.apply_status_check matches 1.. if entity @s[type=player] as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"self"}
execute if score $is_entity ca.apply_status_check matches 1.. if entity @s[type=player] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"target"}
