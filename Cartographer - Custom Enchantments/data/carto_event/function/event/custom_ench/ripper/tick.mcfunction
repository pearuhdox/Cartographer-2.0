$execute as $(target) at @s if score duration= carto_event matches 1.. if score $total_ct ca.stuck_count matches 1.. run tag @s add ca.ripper_tagged

$execute as $(target) at @s run scoreboard players operation $total_ct ca.stuck_count = @s ca.stuck_count
$execute as $(target) at @s run scoreboard players operation $total_ct ca.stuck_count += @s ca.fishing_stuck

$execute as $(target) at @s unless score $total_ct ca.stuck_count matches 1.. run scoreboard players set @s ca.ripper_lvl 0
$execute as $(target) at @s unless score $total_ct ca.stuck_count matches 1.. run tag @s remove ca.ripper_tagged
$execute as $(target) at @s unless score $total_ct ca.stuck_count matches 1.. run return 0

$execute as $(target) at @s if score duration= carto_event matches 1 if score $total_ct ca.stuck_count matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/ripper",duration:37,delay:003,parameters:{},merge_behavior:"merge"}



return 1