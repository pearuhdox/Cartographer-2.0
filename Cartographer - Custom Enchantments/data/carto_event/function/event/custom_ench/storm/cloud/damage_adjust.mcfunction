$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by $(target)
damage @s 0.001 cartographer_custom_enchantments:enchant_damage


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
function carto_event:api/create_single_entity_event {event:"custom_ench/storm/cooldown",duration:6,delay:000,parameters:{},merge_behavior:"none"}
