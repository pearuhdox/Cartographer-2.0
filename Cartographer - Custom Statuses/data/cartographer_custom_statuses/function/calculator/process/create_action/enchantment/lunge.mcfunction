tag @s remove ca.apply_status_pounce_self
tag @s remove ca.apply_status_pounce_target

execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.pounce set value {self:[],target:[]}
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.pounce set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].pounce.self
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].pounce.self
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.pounce.self set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.pounce.self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].pounce.target
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].pounce.target
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.pounce.target set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.pounce.target set from storage cartographer:custom_statuses calculator.unpacked

execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.pounce.self[0] run tag @s add ca.apply_status_pounce_self
execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.pounce.target[0] run tag @s add ca.apply_status_pounce_target

execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.pounce.self[0] run tag @s add ca.apply_status_pounce_self
execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.pounce.target[0] run tag @s add ca.apply_status_pounce_target