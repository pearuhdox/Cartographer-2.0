#Calculate the number of xp points that need to be removed
#Starting will always be 0 because full point calculation
scoreboard players set $start_lvl ca.xp 0
scoreboard players operation $end_lvl ca.xp = $input_lvl ca.xp
function cartographer_core:handlers/xp/get_req/handler