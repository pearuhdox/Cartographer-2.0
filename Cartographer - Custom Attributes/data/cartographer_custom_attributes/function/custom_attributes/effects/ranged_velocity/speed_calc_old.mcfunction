scoreboard players remove $speed ca.attr_ranged_velocity_total 100

scoreboard players operation $speed_numer ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total
scoreboard players operation $speed_denom ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total

scoreboard players operation $speed_denom ca.attr_ranged_velocity_total *= $50 ca.CONSTANT
scoreboard players operation $speed_denom ca.attr_ranged_velocity_total /= $100 ca.CONSTANT

execute if score $speed ca.attr_ranged_velocity_total matches 0.. run scoreboard players add $speed_denom ca.attr_ranged_velocity_total 200
execute if score $speed ca.attr_ranged_velocity_total matches ..-1 run scoreboard players remove $speed_denom ca.attr_ranged_velocity_total 200

scoreboard players operation $speed_numer ca.attr_ranged_velocity_total *= $100 ca.CONSTANT
scoreboard players operation $speed_numer ca.attr_ranged_velocity_total /= $speed_denom ca.attr_ranged_velocity_total

execute if score $speed ca.attr_ranged_velocity_total matches 0.. run scoreboard players add $speed_numer ca.attr_ranged_velocity_total 100

execute if score $speed ca.attr_ranged_velocity_total matches ..-1 run scoreboard players set $speed_reverse ca.attr_ranged_velocity_total 200
execute if score $speed ca.attr_ranged_velocity_total matches ..-1 run scoreboard players operation $speed_reverse ca.attr_ranged_velocity_total -= $speed_numer ca.attr_ranged_velocity_total
execute if score $speed ca.attr_ranged_velocity_total matches ..-1 run scoreboard players operation $speed_reverse ca.attr_ranged_velocity_total /= $2 ca.CONSTANT

execute if score $speed ca.attr_ranged_velocity_total matches 0.. run scoreboard players operation $speed ca.attr_ranged_velocity_total = $speed_numer ca.attr_ranged_velocity_total
execute if score $speed ca.attr_ranged_velocity_total matches ..-1 run scoreboard players operation $speed ca.attr_ranged_velocity_total = $speed_reverse ca.attr_ranged_velocity_total