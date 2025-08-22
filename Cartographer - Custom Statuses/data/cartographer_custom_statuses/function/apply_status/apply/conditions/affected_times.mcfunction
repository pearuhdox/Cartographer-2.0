function cartographer_core:amd/read

$scoreboard players set $affected_times_max ca.apply_status_conditions $(affected_times)
$execute store result score $affected_times_current ca.apply_status_conditions run data get storage amd:mob_data working_data.data.affected_data.$(id)_$(action)_$(type)_affected_times_$(affected_times)_id_$(affected_times_id)

scoreboard players add $affected_times_current ca.apply_status_conditions 1

execute if score $affected_times_current ca.apply_status_conditions < $affected_times_max ca.apply_status_conditions run scoreboard players set $condition_failed ca.apply_status_conditions 1
execute if score $affected_times_current ca.apply_status_conditions >= $affected_times_max ca.apply_status_conditions run scoreboard players set $affected_times_current ca.apply_status_conditions 0

$execute store result storage amd:mob_data working_data.data.affected_data.$(id)_$(action)_$(type)_affected_times_$(affected_times)_id_$(affected_times_id) int 1 run scoreboard players get $affected_times_current ca.apply_status_conditions

function cartographer_core:amd/write