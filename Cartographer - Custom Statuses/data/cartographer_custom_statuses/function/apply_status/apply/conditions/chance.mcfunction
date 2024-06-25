execute store result score $chance_roll ca.apply_status_conditions run random value 1..100

$scoreboard players set $chance_threshold ca.apply_status_conditions $(chance)
$scoreboard players set $chance_entropy_val ca.apply_status_conditions $(chance)

scoreboard players operation $chance_entropy_val ca.apply_status_conditions /= $7 ca.CONSTANT
execute if score $chance_entropy_val ca.apply_status_conditions matches ..0 run scoreboard players set $chance_entropy_val ca.apply_status_conditions 1


$execute store result score $chance_entropy ca.apply_status_conditions run data get storage cartographer:custom_statuses conditional_data.$(id)_$(action)_$(type)_chance_$(chance)_entropy

scoreboard players operation $chance_roll ca.apply_status_conditions -= $chance_entropy ca.apply_status_conditions


#Fail Condition for Chance
execute if score $chance_roll ca.apply_status_conditions > $chance_threshold ca.apply_status_conditions run scoreboard players set $condition_failed ca.apply_status_conditions 1
execute if score $chance_roll ca.apply_status_conditions > $chance_threshold ca.apply_status_conditions run scoreboard players operation $chance_entropy ca.apply_status_conditions += $chance_entropy_val ca.apply_status_conditions

execute if score $chance_roll ca.apply_status_conditions < $chance_threshold ca.apply_status_conditions run scoreboard players set $chance_entropy ca.apply_status_conditions 0

$execute store result storage cartographer:custom_statuses conditional_data.$(id)_$(action)_$(type)_chance_$(chance)_entropy int 1 run scoreboard players get $chance_entropy ca.apply_status_conditions