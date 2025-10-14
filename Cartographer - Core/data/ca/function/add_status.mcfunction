#function ca:add_status {action:"melee_hit",affects:"target",id:"wither",duration:100,amplifier:1,conditions:""}

data modify storage cartographer_core:custom_status data set value {}
$data modify storage cartographer_core:custom_status data merge value {action:"$(action)"}
$data modify storage cartographer_core:custom_status data merge value {affects:"$(affects)"}
$data modify storage cartographer_core:custom_status data merge value {id:"$(id)"}
$data modify storage cartographer_core:custom_status data merge value {dur:$(dur)}
$data modify storage cartographer_core:custom_status data merge value {amp:$(amp)}
$data modify storage cartographer_core:custom_status data merge value {conditions:"z$(conditions)"}

data modify storage cartographer_core:custom_status data.conditions set string storage cartographer_core:custom_status data.conditions 1

function ca:add_status/macro with storage cartographer_core:custom_status data