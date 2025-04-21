#Get the items durability
data modify storage cartographer_core:helper get_durability set value {}
data modify storage cartographer_core:helper get_durability set from storage cartographer_repair_stations:item_input data
function cartographer_core:helper/functions/get_durability/calc_max
scoreboard players operation $durability ca.repair_station_state = $durability ca.var

#Multiply it by the value
scoreboard players set $bonus_percent ca.repair_station_state 5
scoreboard players operation $bonus_percent ca.repair_station_state *= $upgrade_4 ca.repair_station_state
scoreboard players add $bonus_percent ca.repair_station_state 100

scoreboard players operation $durability ca.repair_station_state *= $bonus_percent ca.repair_station_state
scoreboard players operation $durability ca.repair_station_state /= $100 ca.CONSTANT

execute store result storage cartographer_repair_stations:item_input data.components.minecraft:max_damage int 1 run scoreboard players get $durability ca.repair_station_state
data modify storage cartographer_repair_stations:item_input data.components.minecraft:custom_data.HasBonusDurability set value 1b

data modify entity 31182015-1851-6191-8192-000000000010 text set value {"text":"! -= Bonus Durability Applied =- !","color":"yellow","bold":true,"italic":false,"hover_event":{"action":"show_text","value":[{"text":"","italic":false}]}}
scoreboard players set $display_warning ca.repair_station_state 80