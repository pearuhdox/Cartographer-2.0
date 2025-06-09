execute if score $is_player ca.ench_quake_lvl matches 1.. run tag @s add ca.player_spawned
execute unless score $is_player ca.ench_quake_lvl matches 1.. run tag @s add ca.mob_spawned

execute if score $is_player ca.ench_quake_lvl matches 1.. run scoreboard players set @s ca.quake_time 0
execute unless score $is_player ca.ench_quake_lvl matches 1.. run scoreboard players set @s ca.quake_time -10

execute if score $is_player ca.ench_quake_lvl matches 1.. at @s run playsound minecraft:entity.warden.sonic_boom player @a[distance=..16] ~ ~ ~ 0.15 1.75
execute if score $is_player ca.ench_quake_lvl matches 1.. at @s run playsound minecraft:entity.zombie.break_wooden_door player @a[distance=..16] ~ ~ ~ 0.15 0.85

execute unless score $is_player ca.ench_quake_lvl matches 1.. at @s run playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..16] ~ ~ ~ 0.15 1.75
execute unless score $is_player ca.ench_quake_lvl matches 1.. at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 0.15 0.85

execute at @s run particle minecraft:explosion ~ ~0.1 ~ 0 0 0 0 1 force
$execute at @s run particle minecraft:block{block_state:{Name:"$(block)"}} ~ ~0.5 ~ 0.4 0.15 0.4 0.1 60 normal

execute store result score @s ca.quake_max run data get storage cartographer:custom_enchantments half_size 100

tag @s add ca.quake_marker

$function carto_event:api/create_single_entity_event {event:"custom_ench/quake/charge",duration:100,delay:0,parameters:{telegraph:"$(telegraph)",block:"$(block)",size:0,damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}
function cartographer_custom_enchantments:enchantment/passive/quake/custom_statuses/append_status with storage carto_event macro

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity