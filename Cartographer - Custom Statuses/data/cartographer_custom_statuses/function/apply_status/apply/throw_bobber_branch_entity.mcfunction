execute on origin run function cartographer_core:amd/read

execute if score $owned_self ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"ranged_hit",type:"self"}
execute if score $owned_self ca.apply_status_conditions matches 1.. on origin run function cartographer_core:amd/write

execute if score $owned_target ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"ranged_hit",type:"target"}
execute if score $owned_target ca.apply_status_conditions matches 1.. on origin run function cartographer_core:amd/write