scoreboard players operation $past_x ca.barbed_x = @s ca.barbed_x
scoreboard players operation $past_y ca.barbed_y = @s ca.barbed_y
scoreboard players operation $past_z ca.barbed_z = @s ca.barbed_z

execute store result score @s ca.barbed_x run data get entity @s Pos[0] 100
execute store result score @s ca.barbed_y run data get entity @s Pos[1] 100
execute store result score @s ca.barbed_z run data get entity @s Pos[2] 100

scoreboard players operation $diff_x ca.barbed_x = @s ca.barbed_x
scoreboard players operation $diff_y ca.barbed_y = @s ca.barbed_y
scoreboard players operation $diff_z ca.barbed_z = @s ca.barbed_z

scoreboard players operation $diff_x ca.barbed_x -= $past_x ca.barbed_x
scoreboard players operation $diff_y ca.barbed_y -= $past_y ca.barbed_y
scoreboard players operation $diff_z ca.barbed_z -= $past_z ca.barbed_z

scoreboard players operation $diff_x ca.barbed_x *= $diff_x ca.barbed_x
scoreboard players operation $diff_y ca.barbed_y *= $diff_y ca.barbed_y
scoreboard players operation $diff_z ca.barbed_z *= $diff_z ca.barbed_z

scoreboard players set $total ca.barbed_stack 0
scoreboard players operation $total ca.barbed_stack += $diff_x ca.barbed_x
scoreboard players operation $total ca.barbed_stack += $diff_y ca.barbed_y
scoreboard players operation $total ca.barbed_stack += $diff_z ca.barbed_z

scoreboard players operation $math.isqrt.x bs.in = $total ca.barbed_stack
function #bs.math:isqrt
scoreboard players operation $total ca.barbed_stack = $math.isqrt bs.out