execute store result score $player_mining_speed ca.collapse_break_speed run attribute @s block_break_speed get 10
execute store result score $player_efficiency ca.collapse_break_speed run attribute @s mining_efficiency get 100
execute if score $player_efficiency ca.collapse_break_speed matches 1.. run scoreboard players remove $player_efficiency ca.collapse_break_speed 1

execute if score $player_efficiency ca.collapse_break_speed matches 1.. run scoreboard players operation $math.isqrt.x bs.in = $player_efficiency ca.collapse_break_speed
execute if score $player_efficiency ca.collapse_break_speed matches 1.. run function #bs.math:isqrt
execute if score $player_efficiency ca.collapse_break_speed matches 1.. run scoreboard players operation $player_efficiency ca.collapse_break_speed = $math.isqrt bs.out

scoreboard players operation $player_efficiency ca.collapse_break_speed /= $10 ca.CONSTANT

scoreboard players operation @s ca.collapse_break_speed += $player_mining_speed ca.collapse_break_speed
scoreboard players operation @s ca.collapse_break_speed += $player_efficiency ca.collapse_break_speed