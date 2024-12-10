function cartographer_core:amd/read

execute if entity @s[tag=ca.apply_status_storm_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"storm",type:"self"}

execute if entity @s[tag=ca.apply_status_storm_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"storm",type:"target"}

function cartographer_core:amd/write