execute unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default
item modify entity @s armor.body cartographer_rat:apply_invul_frames

tag @s add ca.i_frames_applied

scoreboard players set @s ca.i_frame_tick_timer 1
tag @s add ca.custom_invul_frames

scoreboard players set $time ca.i_frame_tick_timer 5