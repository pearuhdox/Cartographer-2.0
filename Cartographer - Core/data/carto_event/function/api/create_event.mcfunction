# crates a new orphan type event, this is an event with no owner or target
## macro arguments
##	- duration:		the amount of ticks this event should run for after the delay ends
##	- delay:		the amount of ticks until this events begins ticking
##	- event:		the function path/id of the event (run as "function carto_event:event/$(event)/tick" $(parameters))
##	- parameters:	the macro arguemnts to pass to the event tick function


$data modify storage carto_event new set value {duration:$(duration),event:"$(event)",type:"orphan",parameters:$(parameters)}
$function carto_event:$(event)/create

scoreboard players operation new_event_tick= carto_event = current_tick= carto_event
scoreboard players add new_event_tick= carto_event 1
$execute store result storage carto_event macro.current_tick int 1 run scoreboard players add new_event_tick= carto_event $(delay)

function carto_event:api/zzz/append_event with storage carto_event macro