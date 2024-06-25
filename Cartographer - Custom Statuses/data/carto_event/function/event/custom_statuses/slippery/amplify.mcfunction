execute store result score $modify_x ca.slippery_val run data get entity @s Motion[0] 1000
execute store result score $modify_y ca.slippery_val run data get entity @s Motion[1] 1000
execute store result score $modify_z ca.slippery_val run data get entity @s Motion[2] 1000

$scoreboard players set $scale ca.slippery_val $(scale)

$scoreboard players set $y_scale ca.slippery_val $(scale)
scoreboard players remove $y_scale ca.slippery_val 100
scoreboard players operation $y_scale ca.slippery_val *= $67 ca.CONSTANT
scoreboard players operation $y_scale ca.slippery_val /= $100 ca.CONSTANT
scoreboard players add $y_scale ca.slippery_val 100

scoreboard players operation $modify_x ca.slippery_val *= $scale ca.slippery_val
scoreboard players operation $modify_y ca.slippery_val *= $y_scale ca.slippery_val
scoreboard players operation $modify_z ca.slippery_val *= $scale ca.slippery_val

scoreboard players operation $modify_x ca.slippery_val /= $100 ca.CONSTANT
scoreboard players operation $modify_y ca.slippery_val /= $100 ca.CONSTANT
scoreboard players operation $modify_z ca.slippery_val /= $100 ca.CONSTANT

data modify storage cartographer_custom_statuses:slippery Motion set value [0.0d,0.0d,0.0d]

execute store result storage cartographer_custom_statuses:slippery Motion[0] double 0.001 run scoreboard players get $modify_x ca.slippery_val
execute store result storage cartographer_custom_statuses:slippery Motion[1] double 0.001 run scoreboard players get $modify_y ca.slippery_val
execute store result storage cartographer_custom_statuses:slippery Motion[2] double 0.001 run scoreboard players get $modify_z ca.slippery_val

execute unless entity @s[type=#cartographer_core:can_fly] run tag @s add ca.is_slipping

data modify entity @s Motion set from storage cartographer_custom_statuses:slippery Motion

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute unless entity @s[type=#cartographer_core:can_fly] run scoreboard players set @s ca.slippery_cooldown $(cooldown)
execute if entity @s[type=#cartographer_core:can_fly] run scoreboard players operation @s ca.slippery_cooldown = $fly_cdl ca.slippery_val