#Formula is (level^2 x 2.5) - (40.5 x level) + 360
#No decimals in scoreboard so multiply everything by 2 and then divide by 2 later.
#Formula should never result in decimals if accurate.

scoreboard players operation $total_points ca.xp = $end_lvl ca.xp
scoreboard players operation $total_points ca.xp *= $total_points ca.xp
scoreboard players operation $total_points ca.xp *= $5 ca.CONSTANT

scoreboard players set $level_points ca.xp 81
scoreboard players operation $level_points ca.xp *= $end_lvl ca.xp

scoreboard players operation $total_points ca.xp -= $level_points ca.xp

scoreboard players operation $total_points ca.xp /= $2 ca.CONSTANT

scoreboard players add $total_points ca.xp 360