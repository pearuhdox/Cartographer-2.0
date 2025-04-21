execute on attacker if entity @s[type=player] run function cartographer_core:pldata/read
execute on attacker unless entity @s[type=player] run function cartographer_core:amd/read

#If the hit entity is a player - run from mob location
execute if entity @s[type=player] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"amd:mob_data",path:"working_data.data.custom_status_actions",action:"thorns",type:"target"}

#If the hit entity is a mob - run from player location
execute unless entity @s[type=player] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"thorns",type:"target"}

execute on attacker if entity @s[type=player] run function cartographer_core:pldata/write
execute on attacker unless entity @s[type=player] run function cartographer_core:amd/write