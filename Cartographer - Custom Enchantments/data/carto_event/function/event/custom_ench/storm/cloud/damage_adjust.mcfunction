$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by $(owner)

$execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.self as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"self"}
execute if data storage carto_event current[-1].parameters.status_info.enchantment_hit.target run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"carto_event",path:"current[-1].parameters.status_info",action:"enchantment_hit",type:"target"}

execute store result score $pos_x ca.ench_storm_lvl run data get entity @s Pos[0] 10
execute store result score $pos_y ca.ench_storm_lvl run data get entity @s Pos[1] 10
execute store result score $pos_z ca.ench_storm_lvl run data get entity @s Pos[2] 10

execute store result score $pos_x_add ca.ench_storm_lvl run random value -5..5
execute store result score $pos_z_add ca.ench_storm_lvl run random value -5..5

scoreboard players operation $pos_x ca.ench_storm_lvl += $pos_x_add ca.ench_storm_lvl
scoreboard players operation $pos_z ca.ench_storm_lvl += $pos_z_add ca.ench_storm_lvl

execute store result storage carto_event current[-1].parameters.x double 0.1 run scoreboard players get $pos_x ca.ench_storm_lvl
execute store result storage carto_event current[-1].parameters.y double 0.1 run scoreboard players get $pos_y ca.ench_storm_lvl
execute store result storage carto_event current[-1].parameters.z double 0.1 run scoreboard players get $pos_z ca.ench_storm_lvl


tag @s add ca.storm_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/storm/cooldown",duration:6,delay:0,parameters:{},merge_behavior:"none"}
