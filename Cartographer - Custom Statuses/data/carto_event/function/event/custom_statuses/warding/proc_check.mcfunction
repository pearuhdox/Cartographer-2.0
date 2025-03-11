
execute if score @s ca.warding_hits >= $max_cascade ca.warding_var run function cartographer_core:handlers/resistor/damage_player/start
execute if score @s ca.warding_hits >= $max_cascade ca.warding_var run scoreboard players set @s ca.resistor_queue 0 

execute unless score @s ca.warding_hits >= $max_cascade ca.warding_var run function carto_event:event/custom_statuses/warding/proc with storage carto_event current[-1].parameters