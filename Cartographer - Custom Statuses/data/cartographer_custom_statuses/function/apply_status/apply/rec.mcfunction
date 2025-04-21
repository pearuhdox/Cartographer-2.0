scoreboard players set $type_is_self ca.apply_status_conditions 0
scoreboard players set $type_is_target ca.apply_status_conditions 0

data modify storage cartographer:custom_statuses apply[0].owner set from storage cartographer:player_data main.working_data.uuid
data modify storage cartographer:custom_statuses apply[0].status_target set from storage cartographer:custom_statuses status_target
$data modify storage cartographer:custom_statuses apply[0].action set value "$(action)"
$data modify storage cartographer:custom_statuses apply[0].type set value "$(type)"
data modify storage cartographer:custom_statuses apply[0].range set from storage cartographer:custom_statuses apply[0].conditions.range
data modify storage cartographer:custom_statuses apply[0].limit set from storage cartographer:custom_statuses apply[0].conditions.limit

$scoreboard players set $type_is_$(type) ca.apply_status_conditions 1

$function cartographer_custom_statuses:apply_status/apply/check_conditions/type/$(action) with storage cartographer:custom_statuses apply[0]

#FUNCTION TAG HERE

data remove storage cartographer:custom_statuses apply[0]

$execute if data storage cartographer:custom_statuses apply[0] run function cartographer_custom_statuses:apply_status/apply/rec {action:"$(action)",type:"$(type)"}