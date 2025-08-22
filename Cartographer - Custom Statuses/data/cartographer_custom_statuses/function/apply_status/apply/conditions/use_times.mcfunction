function cartographer_core:pldata/read

$scoreboard players set $use_times_max ca.apply_status_conditions $(use_times)
$execute store result score $use_times_current ca.apply_status_conditions run data get storage cartographer:player_data main.working_data.cartographer.status_condition_data.$(id)_$(action)_$(type)_use_times_$(use_times)_id_$(use_times_id)

scoreboard players add $use_times_current ca.apply_status_conditions 1

execute if score $use_times_current ca.apply_status_conditions < $use_times_max ca.apply_status_conditions run scoreboard players set $condition_failed ca.apply_status_conditions 1
execute if score $use_times_current ca.apply_status_conditions >= $use_times_max ca.apply_status_conditions run scoreboard players set $use_times_current ca.apply_status_conditions 0

$execute store result storage cartographer:player_data main.working_data.cartographer.status_condition_data.$(id)_$(action)_$(type)_use_times_$(use_times)_id_$(use_times_id) int 1 run scoreboard players get $use_times_current ca.apply_status_conditions
function cartographer_core:pldata/write