$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

$scoreboard players add @s ca.windblast_buffer $(damage)
execute if score @s ca.windblast_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#bbecec",buffer_name:"windblast"}

tag @s add co_rotation_lock
$execute facing entity $(owner) feet run tp @s ~ ~ ~ ~ 0

$scoreboard players set @s co_y $(vertical_knockback)
$scoreboard players set @s co_send -$(knockback)
execute as @s at @s run function motion:motion/push


tag @s remove co_rotation_lock

particle minecraft:gust ~ ~0.3 ~ 0 0 0 0 1 force

scoreboard players set @s ca.windblast_cdl 3

scoreboard players set $windblast_particle ca.windblast_raycast 20
$execute anchored eyes positioned ^ ^ ^ facing entity $(original) eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/windblast/particle_rec with storage cartographer_custom_statuses:windblast data

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
