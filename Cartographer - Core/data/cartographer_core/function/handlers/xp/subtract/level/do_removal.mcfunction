#Setup removed xp for storage then run macro
data modify storage cartographer:core xp.points set value {}
execute store result storage cartographer:core xp.points int 1 run scoreboard players get $total_points ca.xp
function cartographer_core:handlers/xp/subtract/level/macro with storage cartographer:core xp
