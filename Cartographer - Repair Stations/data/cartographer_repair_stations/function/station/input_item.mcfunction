data modify storage cartographer_repair_stations:item_input data set value {}
data modify storage cartographer_repair_stations:item_input data set from entity @s SelectedItem

execute store result score $item_damage ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components.minecraft:damage
execute store result score $add_upgrade ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components.minecraft:custom_data.RepairStationUpgrade

scoreboard players set $state ca.repair_station_state 10

execute unless data storage cartographer_repair_stations:item_input data.count run scoreboard players set $state ca.repair_station_state 1000

execute unless data storage cartographer_repair_stations:item_input data.minecraft:custom_data.RepairStationUpgrade if score $item_damage ca.repair_station_state matches 1.. run scoreboard players set $state ca.repair_station_state 1
execute if score $add_upgrade ca.repair_station_state matches 1.. run scoreboard players set $state ca.repair_station_state 5


execute store result score $xp_cost ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components.minecraft:repair_cost
execute store result score $lapis_cost ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components.minecraft:custom_data.LapisCost
execute store result score $has_bonus_dur ca.repair_station_state run data get storage cartographer_repair_stations:item_input data.components.minecraft:custom_data.HasBonusDurability

execute if score $xp_cost ca.repair_station_state matches 0 run scoreboard players set $xp_cost ca.repair_station_state 0
execute if score $lapis_cost ca.repair_station_state matches 0 run scoreboard players set $lapis_cost ca.repair_station_state 0
#execute if score $lapis_cost ca.repair_station_state matches 19 run scoreboard players set $lapis_cost ca.repair_station_state 20

scoreboard players add $xp_cost ca.repair_station_state 1

scoreboard players operation $projected_xp_cost ca.repair_station_state = $xp_cost ca.repair_station_state
scoreboard players operation $projected_lapis_cost ca.repair_station_state = $lapis_cost ca.repair_station_state

execute if score $xp_cost ca.repair_station_state > $xp_maximum ca.repair_station_state run scoreboard players set $state ca.repair_station_state 11
# execute if score $lapis_cost ca.repair_station_state > $lapis_maximum ca.repair_station_state run scoreboard players set $state ca.repair_station_state 11

execute if data storage cartographer_repair_stations:item_input data.components.minecraft:max_stack_size if data storage cartographer_repair_stations:item_input data.components.minecraft:max_damage unless data storage cartographer_repair_stations:item_input data.components.minecraft:custom_data.custom_repairable run scoreboard players set $state ca.repair_station_state 10

execute unless score $allow_transport_repair ca.repair_station_state matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set $state ca.repair_station_state 10
execute unless score $allow_transport_repair ca.repair_station_state matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run scoreboard players set $state ca.repair_station_state 10


execute if score $state ca.repair_station_state matches 1 run function cartographer_repair_stations:station/start_repair
execute if score $state ca.repair_station_state matches 5 run function cartographer_repair_stations:station/add_upgrade

execute if score $state ca.repair_station_state matches 10 run function cartographer_repair_stations:station/reject
execute if score $state ca.repair_station_state matches 11 run function cartographer_repair_stations:station/too_expensive