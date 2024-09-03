$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

execute store result score $add ca.brittle_buffer run data get storage carto_event current[-1].parameters.damage
scoreboard players operation @s ca.brittle_buffer += $add ca.brittle_buffer
execute if score @s ca.brittle_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#e9be28",buffer_name:"brittle"}

particle dust{color:[0.671,0.494,0.227],scale:3} ~ ~1 ~ 0.75 0.3 0.75 1 8 normal
#particle explosion ~ ~ ~ 0 0 0 0 1 normal