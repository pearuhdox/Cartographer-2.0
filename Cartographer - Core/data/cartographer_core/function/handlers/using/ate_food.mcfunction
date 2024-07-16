advancement revoke @s only cartographer_core:ate_food

execute if score $custom_statuses ca.installed matches 1.. run function cartographer_custom_statuses:apply_status/other/consumed

tag @s add ca.ate_food_check