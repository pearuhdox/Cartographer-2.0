function cartographer_core:amd/read

execute if entity @s[tag=ca.apply_status_starfall_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"starfall",type:"self"}

execute if entity @s[tag=ca.apply_status_starfall_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"starfall",type:"target"}

function cartographer_core:amd/write