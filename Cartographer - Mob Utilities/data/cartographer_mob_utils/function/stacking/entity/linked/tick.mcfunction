
scoreboard players set $passenger_found ca.stack_var 0
execute if entity @s[tag=ca.has_passenger] run function cartographer_mob_utils:stacking/entity/linked/rec_passenger

scoreboard players set $vehicle_found ca.stack_var 0
execute if entity @s[tag=ca.has_vehicle] run function cartographer_mob_utils:stacking/entity/linked/rec_vehicle

execute if score $passenger_found ca.stack_var matches 0 if entity @s[tag=ca.has_passenger] at @s run function cartographer_mob_utils:stacking/entity/linked/delete
execute if score $vehicle_found ca.stack_var matches 0 if entity @s[tag=ca.has_vehicle] at @s run function cartographer_mob_utils:stacking/entity/linked/delete