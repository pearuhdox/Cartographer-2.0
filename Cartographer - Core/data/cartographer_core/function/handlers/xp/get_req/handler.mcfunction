scoreboard players set $total_points ca.xp 0

execute if score $start_lvl ca.xp matches 1.. run function cartographer_core:handlers/xp/get_req/rec
execute if score $start_lvl ca.xp matches 0 run function cartographer_core:handlers/xp/get_req/fast