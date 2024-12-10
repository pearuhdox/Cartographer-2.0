function cartographer_core:amd/read

execute if entity @s[tag=ca.apply_status_soulfire_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"soulfire",type:"self"}

execute if entity @s[tag=ca.apply_status_soulfire_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"soulfire",type:"target"}

function cartographer_core:amd/write