# check event - returns a 1 if there is an event this tick with the specified parameters, otherwise returns fail
## macro arguments
##	- event: 		the event id
##	- event_type:	the type of event, either "single_entity" or "targeted"
##	- entity_type:	the relation of the entity you are checking to the event, either "target" or "owner"

#getting timestamps
execute store result storage carto_event event_check_macro.current_tick int 1 store result score next_tick= carto_event run scoreboard players get current_tick= carto_event
execute store result storage carto_event event_check_macro.next_tick int 1 run scoreboard players add next_tick= carto_event 1

#getting uuid
data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event event_check_macro.entity set from storage gu:main out

#writing event
$data modify storage carto_event event_check_macro.event set value "$(event)"

#setting type specific data
##entity_type - target/owner
$data modify storage carto_event event_check_macro.entity_type set value "$(entity_type)"
##event_type - single_entity/targeted
$data modify storage carto_event event_check_macro.type set value "$(event_type)"

#doing check
return run function carto_event:check_event/ec with storage carto_event event_check_macro