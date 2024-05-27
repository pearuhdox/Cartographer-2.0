$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

playsound minecraft:block.chain.break hostile @a[distance=..16] ~ ~ ~ 2 0.5
playsound minecraft:block.sculk_sensor.clicking hostile @a[distance=..16] ~ ~ ~ 1.5 1.25

execute store result score $shackled_x ca.status_var run data get entity @s Pos[0]
execute store result score $shackled_y ca.status_var run data get entity @s Pos[1]
execute store result score $shackled_z ca.status_var run data get entity @s Pos[2]

scoreboard players add $shackled_y ca.status_var 1

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

execute store result storage cartographer_custom_statuses:shackled particle.x int 1 run scoreboard players get $shackled_x ca.status_var
execute store result storage cartographer_custom_statuses:shackled particle.y int 1 run scoreboard players get $shackled_y ca.status_var
execute store result storage cartographer_custom_statuses:shackled particle.z int 1 run scoreboard players get $shackled_z ca.status_var

function carto_event:event/custom_statuses/shackled/particle with storage cartographer_custom_statuses:shackled particle

scoreboard players set @s ca.shackled_cdl 2