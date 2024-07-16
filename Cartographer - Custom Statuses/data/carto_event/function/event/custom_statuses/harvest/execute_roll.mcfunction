execute store result score $execute_roll ca.harvest_var run random value 1..100

execute if score $execute_roll ca.harvest_var <= $execute ca.harvest_var run function carto_event:event/custom_statuses/harvest/execute_do