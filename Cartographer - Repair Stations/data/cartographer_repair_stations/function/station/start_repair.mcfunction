item replace entity @s weapon.mainhand with air

scoreboard players set $state ca.repair_station_state 1

data modify entity 31182015-1851-6191-8192-000000000007 item set from storage cartographer_repair_stations:item_input data

data merge entity 31182015-1851-6191-8192-000000000007 {Glowing:1b,glow_color_override:10741839,interpolation_duration:12,start_interpolation:0,transformation:[-0.7f, 0f, 0f,0f,0f, 0.7f, 0f,1.600f,0.000f, 0.000f, -0.700f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

data modify entity 31182015-1851-6191-8192-000000000008 text set value {"translate":"cartographer.repair_station.display.use","fallback":"[%s] to repair the item.\n[%s] to return the item.","color":"white","italic":false,"with":[{"keybind":"key.attack","color":"aqua"},{"keybind":"key.use","color":"aqua"}]}

execute as 31182015-1851-6191-8192-000000000007 at @s run function cartographer_repair_stations:station/identify_material

function cartographer_repair_stations:station/create_cost_text

data modify entity 31182015-1851-6191-8192-000000000009 text set value [{"text":" ","color":"white","italic":false}]
data modify entity 31182015-1851-6191-8192-000000000009 text set from storage cartographer_repair_stations:full_string data

scoreboard players set $display_warning ca.repair_station_state 1
scoreboard players set $time ca.repair_station_state 0
scoreboard players set $time2 ca.repair_station_state 0

playsound minecraft:block.conduit.activate block @a[distance=..16] ~ ~ ~ 1.5 2
playsound minecraft:entity.warden.tendril_clicks block @a[distance=..16] ~ ~ ~ 0.5 1.5