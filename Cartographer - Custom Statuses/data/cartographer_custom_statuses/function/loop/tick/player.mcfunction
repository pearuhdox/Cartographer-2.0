#Run siphon player
execute if score @s ca.siphon_timer matches 1.. run function cartographer_custom_statuses:player/siphon/tick

execute if entity @s[tag=ca.do_siphon_heal] run function cartographer_custom_statuses:player/siphon/run_heal

#Run passive status conditions - jump and passive
execute if score @s ca.jump matches 1.. if entity @s[tag=ca.apply_status_jump_self] run function cartographer_custom_statuses:apply_status/apply/jump_handler
execute if score @s ca.jump matches 1.. if entity @s[tag=ca.apply_status_jump_target] run function cartographer_custom_statuses:apply_status/apply/jump_handler

execute if predicate cartographer_core:periodic_tick/10 if entity @s[tag=ca.apply_status_passive_self] run function cartographer_custom_statuses:apply_status/apply/passive_handler
execute if predicate cartographer_core:periodic_tick/10 if entity @s[tag=ca.apply_status_passive_target] run function cartographer_custom_statuses:apply_status/apply/passive_handler