scoreboard players set $attacked ca.status_var 0
execute if score $direct_hit ca.apply_status_check matches 1.. if entity @s[tag=ca.apply_status_attacked_self,tag=!ca.status_attacked_cdl] run scoreboard players set $attacked ca.status_var 1
execute if score $direct_hit ca.apply_status_check matches 1.. if entity @s[tag=ca.apply_status_attacked_target,tag=!ca.status_attacked_cdl] run scoreboard players set $attacked ca.status_var 1

execute if score $attacked ca.status_var matches 1.. run function cartographer_core:amd/read

execute if score $attacked ca.status_var matches 1.. if entity @s[tag=ca.apply_status_attacked_self,tag=!ca.status_attacked_cdl] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"attacked",type:"self"}

execute if score $attacked ca.status_var matches 1.. if entity @s[tag=ca.apply_status_attacked_target,tag=!ca.status_attacked_cdl] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"attacked",type:"target"}

execute if score $attacked ca.status_var matches 1.. run tag @s add ca.status_attacked_cdl

execute if score $attacked ca.status_var matches 1.. run function carto_event:api/create_single_entity_event {event:"attacked_cooldown",duration:21,delay:0,parameters:{},merge_behavior:"merge"}
