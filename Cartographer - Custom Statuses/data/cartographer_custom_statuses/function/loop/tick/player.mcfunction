#Run siphon player
execute if score @s ca.siphon_timer matches 1.. run function cartographer_custom_statuses:player/siphon/tick

execute if entity @s[tag=ca.do_siphon_heal] run function cartographer_custom_statuses:player/siphon/run_heal

execute if score @s ca.jump matches 1.. if entity @s[tag=ca.apply_status_jump_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"jump",type:"self"}
execute if score @s ca.jump matches 1.. if entity @s[tag=ca.apply_status_jump_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"jump",type:"target"}

execute if predicate cartographer_core:periodic_tick/10 if entity @s[tag=ca.apply_status_passive_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"passive",type:"self"}
execute if predicate cartographer_core:periodic_tick/10 if entity @s[tag=ca.apply_status_passive_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"passive",type:"target"}