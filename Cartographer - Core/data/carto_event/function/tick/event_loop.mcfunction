#{duration:10,event:"",parameters:{}}

#running event
execute store result storage carto_event current[-1].duration int 0.9999999999 store result score duration= carto_event run data get storage carto_event current[-1].duration
##return non-zero if you want to reschedule
$execute store result score reschedule= carto_event run function carto_event:event/$(event)/tick $(parameters)

#schgedule check
execute if score duration= carto_event matches ..1 run scoreboard players set reschedule= carto_event 0

#data handling
execute unless score reschedule= carto_event matches 0 run data modify storage carto_event next append from storage carto_event current[-1]
data remove storage carto_event current[-1]

#looping
execute if data storage carto_event current[-1] run function carto_event:tick/event_loop with storage carto_event current[-1]