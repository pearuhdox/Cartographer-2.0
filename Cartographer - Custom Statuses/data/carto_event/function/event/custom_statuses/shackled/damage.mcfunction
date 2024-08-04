$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

execute store result score $add ca.shackled_buffer run data get storage cartographer_custom_statuses:shackled data.damage 1
scoreboard players operation @s ca.shackled_buffer += $add ca.shackled_buffer

execute store result score $add ca.shackled_buffer_tenths run data get storage cartographer_custom_statuses:shackled data.damage 10
scoreboard players operation $add ca.shackled_buffer_tenths %= $10 ca.CONSTANT
scoreboard players operation @s ca.shackled_buffer_tenths += $add ca.shackled_buffer_tenths
execute if score @s ca.shackled_buffer_tenths matches 10.. run scoreboard players add @s ca.shackled_buffer 1
execute if score @s ca.shackled_buffer_tenths matches 10.. run scoreboard players set @s ca.shackled_buffer_tenths 0

execute if score @s ca.shackled_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#34ceb7",buffer_name:"shackled"}

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