execute on origin run function bb:lib/pldata/read

execute if score $owned_self ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"ranged_hit",type:"self"}
execute if score $owned_self ca.apply_status_conditions matches 1.. on origin run function bb:lib/pldata/write

execute if score $owned_target ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"ranged_hit",type:"target"}
execute if score $owned_target ca.apply_status_conditions matches 1.. on origin run function bb:lib/pldata/write

execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.self[0] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"projectile_data",action:"ranged_hit",type:"self"}
execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.self[0] on origin run function bb:lib/pldata/write

execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.target[0] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"projectile_data",action:"ranged_hit",type:"target"}
execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.target[0] on origin run function bb:lib/pldata/write