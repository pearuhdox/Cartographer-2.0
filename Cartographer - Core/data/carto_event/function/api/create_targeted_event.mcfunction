# crates a new targeted type event, this is an event with a target and an owner, the owner will be the current entity, and the target will be the current entities target
## macro arguments
##	- duration:			the amount of ticks this event should run for after the delay ends
##	- delay:			the amount of ticks until this events begins ticking
##	- event:			the function path/id of the event (run as "function carto_event:event/$(event)/tick" $(parameters))
##	- parameters:		the macro arguemnts to pass to the event tick function, the UUID of the target and owner entities will be inserted into this under "parameters.target" and "parameters.owner"
##	- merge_behavior:	the way that the system will merge with events that have the same event id and target in this tick,
#       "merge" will cause a standard data merge operation.
#       "custom" will call the function "carto_event:$(event)/custom_merge_behavior" with data in the locations
#       "storage carto_event new" for the event you are creating, and "storage carto_event old" is the previous event that is being merged into,
#       the data at "storage carto_event new" will then overrite the previous event. any other value will do nothing unless additional merge behaviors are avalible

$data modify storage carto_event new set value {duration:$(duration),event:"$(event)",type:"targeted",parameters:$(parameters)}
$function carto_event:$(event)/create

scoreboard players operation new_event_tick= carto_event = current_tick= carto_event
scoreboard players add new_event_tick= carto_event 1
$execute store result storage carto_event macro.current_tick int 1 store result storage carto_event event_check_macro.current_tick int 1 run scoreboard players add new_event_tick= carto_event $(delay)

#setting up merge check
$data modify storage carto_event event_check_macro.event set value "$(event)"

data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event new.parameters.owner set from storage gu:main out
data modify storage carto_event event_check_macro.owner set from storage gu:main out

data modify storage gu:main out set value "-"
execute on target run function gu:generate
data modify storage carto_event new.parameters.target set from storage gu:main out
data modify storage carto_event event_check_macro.target set from storage gu:main out

$execute store result score skip_append= carto_event run function carto_event:merge_behavior/$(merge_behavior)/targeted_event with storage carto_event event_check_macro

#appending event
execute if score skip_append= carto_event matches 0 run function carto_event:api/zzz/append_event with storage carto_event macro