scoreboard players set $level_points ca.xp 0

execute if score $start_lvl ca.xp matches 0..15 run function cartographer_core:handlers/xp/get_req/math/0-15
execute if score $start_lvl ca.xp matches 16..30 run function cartographer_core:handlers/xp/get_req/math/16-30
execute if score $start_lvl ca.xp matches 31.. run function cartographer_core:handlers/xp/get_req/math/31

scoreboard players operation $total_points ca.xp += $level_points ca.xp

#Recursive Condition
scoreboard players add $start_lvl ca.xp 1
execute unless score $start_lvl ca.xp = $end_lvl ca.xp run function cartographer_core:handlers/xp/get_req/rec