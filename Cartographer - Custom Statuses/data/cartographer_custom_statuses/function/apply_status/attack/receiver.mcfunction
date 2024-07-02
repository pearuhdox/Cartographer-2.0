execute if score $melee_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"melee_hit",type:"target"}
execute if score $melee_hit_target ca.apply_status_check matches 1.. on attacker run function bb:lib/pldata/write

execute if score $ranged_hit_check ca.apply_status_check matches 1.. as @e[type=#bb:projectile,limit=1,sort=nearest] at @s run function cartographer_custom_statuses:apply_status/apply/analyze_projectile

execute if score $ranged_hit_self ca.apply_status_check matches 1.. on attacker run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"self"}
execute if score $ranged_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"target"}