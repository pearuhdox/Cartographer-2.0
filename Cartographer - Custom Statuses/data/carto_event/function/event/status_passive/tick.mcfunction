$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s add ca.schedule_passive_status
$execute as $(target) at @s if score duration= carto_event matches 1 run schedule function carto_event:event/status_passive/schedule 1t append

$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:api/create_single_entity_event {event:"status_passive",duration:17,delay:3,parameters:{},merge_behavior:"none"}

return 1