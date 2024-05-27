#skipping if no events this tick :)
$execute unless data storage carto_event all.$(current_tick)[0] run return fail

#data handling
$data modify storage carto_event current set from storage carto_event all.$(current_tick)
$data remove storage carto_event all.$(current_tick)
data modify storage carto_event next set value []

#running events
function carto_event:tick/event_loop with storage carto_event current[-1]

#scheduling events for next tick
$data modify storage carto_event all.$(next_tick) append from storage carto_event next[]