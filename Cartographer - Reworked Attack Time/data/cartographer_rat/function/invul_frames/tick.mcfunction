scoreboard players set $time ca.i_frame_tick_timer 5

execute if entity @s[type=player] run function cartographer_rat:invul_frames/player

execute unless entity @s[type=player] if score @s ca.kbr_frames matches 1.. run attribute @s knockback_resistance modifier add ca.invul_frame_kbr 1 add_value
execute unless entity @s[type=player] if score @s ca.kbr_frames matches 1 run attribute @s knockback_resistance modifier remove ca.invul_frame_kbr

execute if score @s ca.invul_frames matches 1.. run scoreboard players remove @s ca.invul_frames 1
execute if score @s ca.kbr_frames matches 1.. run scoreboard players remove @s ca.kbr_frames 1