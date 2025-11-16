tag @s remove ca.apply_status_land_block_self
tag @s remove ca.apply_status_land_block_target

execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_block set value {self:[],target:[]}
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_block set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].land_block.self
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].land_block.self
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_block.self set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_block.self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].land_block.target
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].land_block.target
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_block.target set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_block.target set from storage cartographer:custom_statuses calculator.unpacked

execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_block.self[0] run tag @s add ca.apply_status_land_block_self
execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_block.target[0] run tag @s add ca.apply_status_land_block_target

execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.land_block.self[0] run tag @s add ca.apply_status_land_block_self
execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.land_block.target[0] run tag @s add ca.apply_status_land_block_target