execute if entity @s[tag=ca.listen_death] run function carto_event:api/create_single_entity_event {event:"mob_utils/death_listen",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=#bb:projectile] on origin at @s if entity @s[tag=ca.listen_projectile] run function cartographer_mob_utils:listener/projectile with entity @s data 

scoreboard players set $on_proj ca.mob_var 0
execute if entity @s[type=#bb:projectile] on origin at @s if entity @s[tag=ca.listen_on_projectile] run scoreboard players set $on_proj ca.mob_var 1
execute if score $on_proj ca.mob_var matches 1.. on origin run data modify storage cartographer:mob_utils on_proj_data set value {}
execute if score $on_proj ca.mob_var matches 1.. on origin run data modify storage cartographer:mob_utils on_proj_data set from entity @s data
execute if score $on_proj ca.mob_var matches 1.. run function cartographer_mob_utils:listener/on_projectile with storage cartographer:mob_utils on_proj_data

execute if entity @s[tag=ca.listen_timer] store result score @s ca.timer_var run data get entity @s data.listen_timer_count
execute if entity @s[tag=ca.listen_timer] store result score @s ca.timer_random run data get entity @s data.listen_timer_chance
execute if entity @s[tag=ca.listen_timer] run function carto_event:api/create_single_entity_event {event:"mob_utils/timer_listen",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=warden,tag=ca.listen_sonic,tag=!ca.no_sonic] run function carto_event:api/create_single_entity_event {event:"mob_utils/sonic_listen",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=warden,tag=ca.listen_sonic,tag=!ca.no_sonic] run function carto_event:api/create_single_entity_event {event:"mob_utils/sonic_listen",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=warden,tag=ca.no_sonic] run function carto_event:api/create_single_entity_event {event:"mob_utils/no_sonic",duration:32767,delay:0,parameters:{},merge_behavior:"none"}
execute if entity @s[type=bee,tag=ca.perma_stinger] run function carto_event:api/create_single_entity_event {event:"mob_utils/perma_stinger",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=slime,tag=ca.no_splitting] run function carto_event:api/create_single_entity_event {event:"mob_utils/no_splitting",duration:32767,delay:0,parameters:{},merge_behavior:"none"}
execute if entity @s[type=magma_cube,tag=ca.no_splitting] run function carto_event:api/create_single_entity_event {event:"mob_utils/no_splitting",duration:32767,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[type=creeper,tag=ca.custom_explosion] run function carto_event:event/mob_utils/custom_explosion/setup

execute if entity @s[tag=ca.custom_stacking] if entity @s[tag=ca.stack_separate] run function carto_event:api/create_single_entity_event {event:"mob_utils/stacking/separate/setup",duration:1,delay:0,parameters:{},merge_behavior:"none"}
execute if entity @s[tag=ca.custom_stacking] unless entity @s[tag=ca.stack_separate] run function carto_event:api/create_single_entity_event {event:"mob_utils/stacking/setup",duration:1,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[tag=ca.custom_leashing] run function carto_event:api/create_single_entity_event {event:"mob_utils/leashing/setup",duration:1,delay:0,parameters:{},merge_behavior:"none"}

execute if entity @s[tag=ca.random_variance_speed] run function cartographer_mob_utils:random_variance/randomize_speed
execute if entity @s[tag=ca.random_variance_kbr] run function cartographer_mob_utils:random_variance/randomize_kbr

#Run Mob Create Listener
execute if entity @s[tag=ca.listen_created] run function cartographer_mob_utils:listener/created with entity @s data 

#Run Projectile Create Listener and Summon Create Listeners - and Mob Replaces
execute if entity @s[type=vex] run function cartographer_mob_utils:custom_summon/attempt
execute if entity @s[type=evoker_fangs] run function cartographer_mob_utils:custom_fangs/attempt
