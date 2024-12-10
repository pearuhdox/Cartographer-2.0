execute as @e[type=#cartographer_core:projectile_fishing_bobber,nbt=!{inGround:1b}] at @s run function cartographer_custom_statuses:systems/projectile_find/check_uuid with storage cartographer:custom_statuses

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_statuses,limit=1,sort=nearest] at @s run function cartographer_custom_statuses:apply_status/apply/analyze_projectile

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_statuses] at @s run tag @s remove ca.projectile_target_owned_statuses