tag @s remove ca.apply_status_land_parry_self
tag @s remove ca.apply_status_land_parry_target

execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_parry set value {self:[],target:[]}
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_parry set value {self:[],target:[]}

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].land_parry.self
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].land_parry.self
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_parry.self set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_parry.self set from storage cartographer:custom_statuses calculator.unpacked

data modify storage cartographer:custom_statuses calculator.fetch set value []
data modify storage cartographer:custom_statuses calculator.unpacked set value []
execute if entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage cartographer:player_data main.working_data.cartographer.apply_status_data.equips[].land_parry.target
execute unless entity @s[type=player] run data modify storage cartographer:custom_statuses calculator.fetch append from storage amd:mob_data working_data.data.custom_status_equips[].land_parry.target
function cartographer_custom_statuses:calculator/process/unpack/start
execute if entity @s[type=player] run data modify storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_parry.target set from storage cartographer:custom_statuses calculator.unpacked
execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_status_actions.land_parry.target set from storage cartographer:custom_statuses calculator.unpacked

execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_parry.self[0] run tag @s add ca.apply_status_land_parry_self
execute if entity @s[type=player] if data storage cartographer:player_data main.working_data.cartographer.apply_status_data.actions.land_parry.target[0] run tag @s add ca.apply_status_land_parry_target

execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.land_parry.self[0] run tag @s add ca.apply_status_land_parry_self
execute unless entity @s[type=player] if data storage amd:mob_data working_data.data.custom_status_actions.land_parry.target[0] run tag @s add ca.apply_status_land_parry_target