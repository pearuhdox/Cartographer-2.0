execute store result score $fail_chance ca.harvest_var run random value 1..100

execute if score $fail_chance ca.harvest_var <= $fail_recovery ca.harvest_var run function carto_event:event/custom_statuses/harvest/spawn_treat with storage carto_event current[-1].parameters