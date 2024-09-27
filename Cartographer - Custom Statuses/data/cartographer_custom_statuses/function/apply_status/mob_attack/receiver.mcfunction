
scoreboard players set $melee_hit_self ca.apply_status_check 0
scoreboard players set $melee_hit_target ca.apply_status_check 0

scoreboard players set $ranged_hit_self ca.apply_status_check 0
scoreboard players set $ranged_hit_target ca.apply_status_check 0

scoreboard players set $do_status ca.apply_status_check 0
scoreboard players set $ranged_hit_check ca.apply_status_check 0

scoreboard players set $direct_hit ca.apply_status_check 0
execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] run scoreboard players set $direct_hit ca.apply_status_check 1

execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false,panic_causes=true}}] on attacker if entity @s[tag=ca.apply_status_melee_hit_self] run scoreboard players set $melee_hit_self ca.apply_status_check 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=false,panic_causes=true}}] on attacker if entity @s[tag=ca.apply_status_melee_hit_target] run scoreboard players set $melee_hit_target ca.apply_status_check 1
scoreboard players operation $do_status ca.apply_status_check += $melee_hit_self ca.apply_status_check
scoreboard players operation $do_status ca.apply_status_check += $melee_hit_target ca.apply_status_check

execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] on attacker if entity @s[tag=ca.apply_status_ranged_hit_self] run scoreboard players set $ranged_hit_self ca.apply_status_check 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] on attacker if entity @s[tag=ca.apply_status_ranged_hit_target] run scoreboard players set $ranged_hit_self ca.apply_status_check 1
scoreboard players operation $do_status ca.apply_status_check += $ranged_hit_self ca.apply_status_check
scoreboard players operation $do_status ca.apply_status_check += $ranged_hit_target ca.apply_status_check
scoreboard players operation $ranged_hit_check ca.apply_status_check += $ranged_hit_self ca.apply_status_check
scoreboard players operation $ranged_hit_check ca.apply_status_check += $ranged_hit_target ca.apply_status_check

#Read data if status afflict
execute if score $do_status ca.apply_status_check matches 1.. on attacker run function cartographer_core:amd/read

#MELEE
execute if score $melee_hit_self ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"melee_hit",type:"self"}
execute if score $melee_hit_self ca.apply_status_check matches 1.. on attacker run function cartographer_core:amd/write
 
execute if score $melee_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"melee_hit",type:"target"}
execute if score $melee_hit_target ca.apply_status_check matches 1.. on attacker run function cartographer_core:amd/write

#RANGED
execute if score $ranged_hit_check ca.apply_status_check matches 1.. on attacker run function cartographer_custom_statuses:systems/projectile_find/owner_uuid
execute if score $ranged_hit_check ca.apply_status_check matches 1.. run function cartographer_custom_statuses:systems/projectile_find/scan with storage cartographer:custom_statuses

execute if score $ranged_hit_self ca.apply_status_check matches 1.. on attacker run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"self"}
execute if score $ranged_hit_target ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"active_projectile",action:"projectile_hit",type:"target"}

#execute if score $ranged_hit_check ca.apply_status_check matches 1.. on attacker run function cartographer_core:amd/write


#Run Receiver Code as the player attacked if it was a direct hit
execute if score $direct_hit ca.apply_status_check matches 1.. run function cartographer_custom_statuses:apply_status/other/attacked