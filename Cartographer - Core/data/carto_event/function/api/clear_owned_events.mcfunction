#removes all events that are owned by this entity in this tick
## no macro arguments

execute store result storage carto_event event_clear_macro.current_tick int 1 store result score next_tick= carto_event run scoreboard players get current_tick= carto_event
execute store result storage carto_event event_clear_macro.next_tick int 1 run scoreboard players add next_tick= carto_event 1

data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event event_clear_macro.entity set from storage gu:main out

function carto_event:api/zzz/clear_owned_events with storage carto_event event_clear_macro