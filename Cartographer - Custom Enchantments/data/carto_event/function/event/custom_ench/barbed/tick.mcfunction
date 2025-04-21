$execute as $(target) at @s if predicate cartographer_core:periodic_tick/5 run function carto_event:event/custom_ench/barbed/calculate
$execute as $(target) at @s if predicate cartographer_core:periodic_tick/5 unless predicate cartographer_core:player/sneaking run scoreboard players operation @s ca.barbed_stack += $total ca.barbed_stack

$execute as $(target) at @s run scoreboard players operation $total_ct ca.stuck_count = @s ca.stuck_count
$execute as $(target) at @s run scoreboard players operation $total_ct ca.stuck_count += @s ca.fishing_stuck

$execute as $(target) at @s unless entity @s[type=player] if score @s ca.barbed_stack matches 200.. run function carto_event:event/custom_ench/barbed/start_damage

$execute as $(target) at @s if entity @s[type=player] unless predicate cartographer_core:player/sneaking if score @s ca.barbed_stack matches 400.. run function carto_event:event/custom_ench/barbed/start_damage

$execute as $(target) at @s unless score $total_ct ca.stuck_count matches 1.. run scoreboard players set @s ca.barbed_lvl 0
$execute as $(target) at @s unless score $total_ct ca.stuck_count matches 1.. run return 0

$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.barbed_tagged] run return 0



$execute as $(target) at @s if score duration= carto_event matches 1 if entity @s[tag=ca.barbed_tagged] run function carto_event:api/create_single_entity_event {event:"custom_ench/barbed",duration:1200,delay:3,parameters:{owner:"$(owner)"},merge_behavior:"merge"}

$execute as $(target) at @s run return 1