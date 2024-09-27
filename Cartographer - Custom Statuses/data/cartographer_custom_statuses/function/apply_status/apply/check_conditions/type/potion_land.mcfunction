scoreboard players set $condition_failed ca.apply_status_conditions 0

function cartographer_custom_statuses:apply_status/apply/check_conditions/copy_data

#Ranged only checks target conditions here
function cartographer_custom_statuses:apply_status/apply/check_conditions/target_conditions

execute unless score $condition_failed ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/setup_event with storage cartographer:custom_statuses apply[0]