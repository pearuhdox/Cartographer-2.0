scoreboard players operation $speed ca.attr_ranged_velocity_total = $input_speed ca.attr_ranged_velocity_total
scoreboard players remove $speed ca.attr_ranged_velocity_total 100

scoreboard players operation $speed_numer ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total
scoreboard players operation $speed_denom ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total

scoreboard players operation $speed_numer ca.attr_ranged_velocity_total *= $2 ca.CONSTANT

scoreboard players add $speed_denom ca.attr_ranged_velocity_total 400

scoreboard players operation $speed ca.attr_ranged_velocity_total = $speed_numer ca.attr_ranged_velocity_total
scoreboard players operation $speed ca.attr_ranged_velocity_total *= $100 ca.CONSTANT
scoreboard players operation $speed ca.attr_ranged_velocity_total /= $speed_denom ca.attr_ranged_velocity_total

scoreboard players add $speed ca.attr_ranged_velocity_total 100