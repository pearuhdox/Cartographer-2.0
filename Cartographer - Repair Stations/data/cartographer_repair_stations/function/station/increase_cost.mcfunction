scoreboard players operation $projected_xp_cost ca.repair_station_state *= $2 ca.CONSTANT
scoreboard players operation $projected_lapis_cost ca.repair_station_state *= $2 ca.CONSTANT

execute if score $projected_lapis_cost ca.repair_station_state matches 0 run scoreboard players set $projected_lapis_cost ca.repair_station_state 1

scoreboard players remove $projected_xp_cost ca.repair_station_state 1