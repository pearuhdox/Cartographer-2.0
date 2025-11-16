tag @s remove ca.apply_status_blocking_self
tag @s remove ca.apply_status_blocking_target

execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.blocking set value {self:[],target:[]}
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.blocking set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].blocking.self
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].blocking.self
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.blocking.self set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.blocking.self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].blocking.target
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].blocking.target
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.blocking.target set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.blocking.target set from storage cartographer:custom_statuses calculator.unpacked

execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.blocking.self[0] run tag @s add ca.apply_status_blocking_self
execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.blocking.target[0] run tag @s add ca.apply_status_blocking_target

execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.blocking.self[0] run tag @s add ca.apply_status_blocking_self
execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.blocking.target[0] run tag @s add ca.apply_status_blocking_target