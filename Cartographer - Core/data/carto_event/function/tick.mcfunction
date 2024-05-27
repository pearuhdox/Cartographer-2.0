execute if data storage carto_event api_que[0] run function carto_event:tick/run_api_que with storage carto_event api_que[0]

execute store result storage carto_event macro.current_tick int 1 store result score next_tick= carto_event run scoreboard players add current_tick= carto_event 1
execute store result storage carto_event macro.next_tick int 1 run scoreboard players add next_tick= carto_event 1
function carto_event:tick/event_check with storage carto_event macro