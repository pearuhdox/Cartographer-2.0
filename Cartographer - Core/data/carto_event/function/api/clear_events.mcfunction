#removes all events in this tick
## no macro arguments

#getting timestamps
execute store result storage carto_event event_clear_macro.current_tick int 1 store result score next_tick= carto_event run scoreboard players get current_tick= carto_event
execute store result storage carto_event event_clear_macro.next_tick int 1 run scoreboard players add next_tick= carto_event 1

function carto_event:api/zzz/clear_events with storage carto_event event_clear_macro