scoreboard players set $do_status ca.apply_status_check 0

scoreboard players set $melee_hit_self ca.apply_status_check 0
scoreboard players set $melee_hit_target ca.apply_status_check 0

scoreboard players set $ranged_hit_check ca.apply_status_check 0

scoreboard players set $direct_hit ca.apply_status_check 0
execute if score $melee ehid_damage_type matches 1 run scoreboard players set $direct_hit ca.apply_status_check 1

execute if entity @s[tag=ca.apply_status_melee_hit_self] if score $melee ehid_damage_type matches 1 run scoreboard players set $melee_hit_self ca.apply_status_check 1
execute if entity @s[tag=ca.apply_status_melee_hit_target] if score $melee ehid_damage_type matches 1 run scoreboard players set $melee_hit_target ca.apply_status_check 1
scoreboard players operation $do_status ca.apply_status_check += $melee_hit_self ca.apply_status_check
scoreboard players operation $do_status ca.apply_status_check += $melee_hit_target ca.apply_status_check

execute if score $projectile ehid_damage_type matches 1 run scoreboard players set $ranged_hit_check ca.apply_status_check 1
scoreboard players operation $do_status ca.apply_status_check += $ranged_hit_check ca.apply_status_check

execute unless score $ranged_hit_check ca.apply_status_check matches 1.. run scoreboard players set $ranged_hit_self ca.apply_status_check 0
execute unless score $ranged_hit_check ca.apply_status_check matches 1.. run scoreboard players set $ranged_hit_target ca.apply_status_check 0

execute if score $do_status ca.apply_status_check matches 1.. run function cartographer_core:pldata/read