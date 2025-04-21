execute if score $do_status ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/set_target


execute on attacker if entity @s[tag=ca.apply_status_melee_hit_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"melee_hit",type:"self"}
#Write to player data
execute on attacker if entity @s[tag=ca.apply_status_melee_hit_self] run function cartographer_core:pldata/write

execute if score $melee_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"melee_hit",type:"target"}
execute if score $melee_hit_target ca.apply_status_check matches 1.. on attacker run function cartographer_core:pldata/write

execute if score $ranged_hit_check ca.apply_status_check matches 1.. on attacker run function cartographer_custom_statuses:systems/projectile_find/owner_uuid
execute if score $ranged_hit_check ca.apply_status_check matches 1.. run function cartographer_custom_statuses:systems/projectile_find/scan with storage cartographer:custom_statuses

execute if score $ranged_hit_self ca.apply_status_check matches 1.. on attacker run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"self"}
execute if score $ranged_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"target"}