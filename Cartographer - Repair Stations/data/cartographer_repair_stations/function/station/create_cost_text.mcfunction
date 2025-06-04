setblock 4206900 30 4206900 air replace


setblock 4206900 30 4206900 oak_sign{front_text:{messages:[{"translate":"cartographer.repair_station.cost.format","fallback":"%s | %s | %s","color":"white","italic":false,"with":[{"translate":"cartographer.repair_station.cost.xp","fallback":"%s Levels","color":"#7BE81C","with":[{"score":{"name":"$xp_cost","objective":"ca.repair_station_state"}}]},{"translate":"cartographer.repair_station.cost.lapis","fallback":"%s Lapis Lazuli","color":"#172CE8","with":[{"score":{"name":"$lapis_cost","objective":"ca.repair_station_state"}}]},{"translate":"","fallback":"%1$s %2$s","color":"#fff281","with":[{"score":{"name":"$amount","objective":"ca.repair_station_state"}},{"nbt":"display","storage":"cartographer_repair_stations:data","interpret":true}]}]},{"text":""},{"text":""},{"text":""}]}} replace


data modify storage cartographer_repair_stations:full_string data set value {}
data modify storage cartographer_repair_stations:full_string data set from block 4206900 30 4206900 front_text.messages[0]