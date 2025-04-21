function cartographer_core:pldata/read

execute if entity @s[tag=ca.apply_status_passive_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"passive",type:"self"}
execute if entity @s[tag=ca.apply_status_passive_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"passive",type:"target"}