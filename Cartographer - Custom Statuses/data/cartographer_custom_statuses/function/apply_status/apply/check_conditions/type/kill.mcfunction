scoreboard players set $condition_failed ca.apply_status_conditions 0

function cartographer_custom_statuses:apply_status/apply/check_conditions/copy_data

$execute as $(owner) at @s run function cartographer_custom_statuses:apply_status/apply/check_conditions/owner_conditions

execute unless score $condition_failed ca.apply_status_conditions matches 1.. if score $type_is_self ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/setup_event with storage cartographer:custom_statuses apply[0]
execute unless score $condition_failed ca.apply_status_conditions matches 1.. if score $type_is_target ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/check_conditions/type/passive_branch with storage cartographer:custom_statuses apply[0]