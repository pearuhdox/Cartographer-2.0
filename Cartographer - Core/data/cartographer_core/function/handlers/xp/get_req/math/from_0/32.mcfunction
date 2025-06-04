#Formula is (level^2 x 4.5) - (162.5 x level) + 2220
#No decimals in scoreboard so multiply everything by 2 and then divide by 2 later.
#Formula should never result in decimals if accurate.

scoreboard players operation $total_points ca.xp = $end_lvl ca.xp
scoreboard players operation $total_points ca.xp *= $total_points ca.xp
scoreboard players operation $total_points ca.xp *= $9 ca.CONSTANT

scoreboard players set $level_points ca.xp 325
scoreboard players operation $level_points ca.xp *= $end_lvl ca.xp

scoreboard players operation $total_points ca.xp -= $level_points ca.xp

scoreboard players operation $total_points ca.xp /= $2 ca.CONSTANT

scoreboard players add $total_points ca.xp 2220
