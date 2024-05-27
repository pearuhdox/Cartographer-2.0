#removes all events of this id and type that are targeting this entity in this tick
## macro arguments
##	- event:	the id of the event
##	- type:		the type of event, "orphan", "single_entity", or "targeted"

$data modify storage carto_event event_clear_macro set value {event:"$(event)",type:"$(type)"}
execute store result storage carto_event event_clear_macro.current_tick int 1 store result score next_tick= carto_event run scoreboard players get current_tick= carto_event
execute store result storage carto_event event_clear_macro.next_tick int 1 run scoreboard players add next_tick= carto_event 1

data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event event_clear_macro.entity set from storage gu:main out

function carto_event:api/zzz/remove_targeted_events with storage carto_event event_clear_macro