execute if entity @s[tag=ca.apply_status_consume_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"consume",type:"self"}

execute if entity @s[tag=ca.apply_status_consume_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"consume",type:"target"}
