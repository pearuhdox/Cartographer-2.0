#Formula is level^2 + (6 x level)

scoreboard players operation $total_points ca.xp = $end_lvl ca.xp
scoreboard players operation $total_points ca.xp *= $total_points ca.xp

scoreboard players set $level_points ca.xp 6
scoreboard players operation $level_points ca.xp *= $end_lvl ca.xp

scoreboard players operation $total_points ca.xp += $level_points ca.xp
