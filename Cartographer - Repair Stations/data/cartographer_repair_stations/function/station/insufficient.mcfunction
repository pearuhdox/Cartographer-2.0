data modify entity 31182015-1851-6191-8192-000000000010 text set value '{"text":"Not enough resources to repair!","color":"red","bold":true,"italic":false}'
scoreboard players set $display_warning ca.repair_station_state 80

execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:block_marker{block_state:{Name:"minecraft:barrier"}} ~ ~1.5 ~-0.5 0 0 0 0.02 1 force
execute at 31182015-1851-6191-8192-000000000010 run particle minecraft:poof ~ ~1.5 ~ 0 0 0 0.02 5 normal
playsound minecraft:block.anvil.land block @s ~ ~ ~ 0.5 0.75