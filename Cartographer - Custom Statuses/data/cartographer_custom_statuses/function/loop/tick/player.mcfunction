#Run siphon player
execute if score @s ca.siphon_timer matches 1.. run function cartographer_custom_statuses:player/siphon/tick

execute if entity @s[tag=ca.do_siphon_heal] run function cartographer_custom_statuses:player/siphon/run_heal