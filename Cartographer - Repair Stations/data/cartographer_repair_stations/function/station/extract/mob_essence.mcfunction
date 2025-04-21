clear @s minecraft:player_head[custom_name={"color":"dark_aqua","italic":false,"text":"Mob Essence"}] 1

scoreboard players remove $lapis_cost ca.repair_station_state 1

execute if score $lapis_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/mob_essence