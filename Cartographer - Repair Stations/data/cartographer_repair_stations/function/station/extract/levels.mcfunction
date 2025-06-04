scoreboard players operation $input_lvl ca.xp = $xp_cost ca.repair_station_state

execute store result score $valid ca.xp run function cartographer_core:handlers/xp/subtract/level/check_valid
execute if score $valid ca.xp matches 0 run return 0

function cartographer_core:handlers/xp/subtract/level/get_points

execute if score $upgrade_1 ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/reduce_xp_cost

function cartographer_core:handlers/xp/subtract/level/do_removal