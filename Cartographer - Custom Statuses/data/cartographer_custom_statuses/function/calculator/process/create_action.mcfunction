$tag @s remove ca.apply_status_$(action)_self
$tag @s remove ca.apply_status_$(action)_target

$data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions.$(action) set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
$data modify storage cartographer:custom_statuses calculator.fetch append from storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips[].$(action).self
function cartographer_custom_statuses:calculator/process/unpack/start
$data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions.$(action).self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
$data modify storage cartographer:custom_statuses calculator.fetch append from storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips[].$(action).target
function cartographer_custom_statuses:calculator/process/unpack/start
$data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions.$(action).target set from storage cartographer:custom_statuses calculator.unpacked

$execute if data storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions.$(action).self[0] run tag @s add ca.apply_status_$(action)_self
$execute if data storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.actions.$(action).target[0] run tag @s add ca.apply_status_$(action)_target