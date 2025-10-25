execute if score $time ca.i_frame_tick_timer matches 1.. if entity @s[tag=ca.custom_invul_frames] at @s run function cartographer_rat:invul_frames/tick

execute unless entity @s[tag=ca.i_frames_applied] run function cartographer_rat:invul_frames/mob_register

#execute if score @s ca.rat_dmg_dealt matches 1.. run function cartographer_rat:attack_time/attack

function cartographer_rat:attack_time/player

#scoreboard players set @s ca.rat_dmg_dealt 0