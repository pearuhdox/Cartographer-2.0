data modify storage cartographer:custom_statuses apply[0].owner set from storage bbl:pldata sudo_root.working_data.bbl.name
$data modify storage cartographer:custom_statuses apply[0].action set value "$(action)"
$data modify storage cartographer:custom_statuses apply[0].type set value "$(type)"

function cartographer_custom_statuses:apply_status/apply/check_conditions with storage cartographer:custom_statuses apply[0]

#FUNCTION TAG HERE

data remove storage cartographer:custom_statuses apply[0]

$execute if data storage cartographer:custom_statuses apply[0] run function cartographer_custom_statuses:apply_status/apply/rec {action:"$(action)",type:"$(type)"}