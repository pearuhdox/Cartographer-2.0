$tag @s remove ca.apply_status_$(action)_self
$tag @s remove ca.apply_status_$(action)_target

$execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.$(action) set value {self:[],target:[]}
$execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.$(action) set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
$execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].$(action).self
$execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].$(action).self
function cartographer_custom_statuses:calculator/process/unpack/start
$execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.$(action).self set from storage cartographer:custom_statuses calculator.unpacked
$execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.$(action).self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
$execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].$(action).target
$execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].$(action).target
function cartographer_custom_statuses:calculator/process/unpack/start
$execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.$(action).target set from storage cartographer:custom_statuses calculator.unpacked
$execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.$(action).target set from storage cartographer:custom_statuses calculator.unpacked

$execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.$(action).self[0] run tag @s add ca.apply_status_$(action)_self
$execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.$(action).target[0] run tag @s add ca.apply_status_$(action)_target

$execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.$(action).self[0] run tag @s add ca.apply_status_$(action)_self
$execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.$(action).target[0] run tag @s add ca.apply_status_$(action)_target