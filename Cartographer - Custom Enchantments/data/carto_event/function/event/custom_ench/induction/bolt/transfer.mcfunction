execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.length 1
scoreboard players operation @s ca.raycast *= $4 ca.CONSTANT
$execute anchored eyes positioned ^ ^ ^ facing entity $(previous) eyes positioned ^ ^-0.5 ^0.25 run function carto_event:event/custom_ench/induction/bolt/vfx with storage carto_event current[-1].parameters


$function carto_event:api/create_single_entity_event {event:"custom_ench/induction/bolt",duration:1,delay:2,parameters:{spread:$(spread),length:$(length),damage:"$(damage)",owner:"$(owner)",previous:"$(previous)"},merge_behavior:"none"}