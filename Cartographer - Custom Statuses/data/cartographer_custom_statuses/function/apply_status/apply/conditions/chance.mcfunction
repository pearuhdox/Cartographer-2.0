function cartographer_core:pldata/read

$scoreboard players set $target ca.rand $(chance)
#scoreboard players operation $target ca.rand = $value ca.ench_var

$execute store result score $chance_entropy ca.apply_status_conditions run data get storage cartographer:player_data main.working_data.cartographer.status_condition_data.$(id)_$(action)_$(type)_chance_$(chance)_entropy
scoreboard players operation $entropy ca.rand = $chance_entropy ca.apply_status_conditions

function cartographer_core:handlers/random/roll

#Get value to add for entropy
$scoreboard players set $chance_entropy_val ca.apply_status_conditions $(chance)
scoreboard players operation $chance_entropy_val ca.apply_status_conditions /= $7 ca.CONSTANT
execute if score $chance_entropy_val ca.apply_status_conditions matches ..0 run scoreboard players set $chance_entropy_val ca.apply_status_conditions 1


#Fail Condition for Chance
execute unless score $success ca.rand matches 1.. run scoreboard players set $condition_failed ca.apply_status_conditions 1
execute unless score $success ca.rand matches 1.. run scoreboard players operation $chance_entropy ca.apply_status_conditions += $chance_entropy_val ca.apply_status_conditions

execute if score $success ca.rand matches 1.. run scoreboard players set $chance_entropy ca.apply_status_conditions 0

$execute store result storage cartographer:player_data main.working_data.cartographer.status_condition_data.$(id)_$(action)_$(type)_chance_$(chance)_entropy int 1 run scoreboard players get $chance_entropy ca.apply_status_conditions
function cartographer_core:pldata/write