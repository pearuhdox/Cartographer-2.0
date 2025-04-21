
$data modify storage cartographer:player_data main.working_data set from storage cartographer:player_data main.$(target_id).data

data modify storage cartographer:player_data main.working_data.uuid set value ""

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:player_data main.working_data.uuid set from storage gu:main out