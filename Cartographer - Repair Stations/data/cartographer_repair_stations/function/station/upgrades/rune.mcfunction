clear @s prismarine_crystals[minecraft:custom_data={RepairStationUpgrade:3}] 1 
scoreboard players add $upgrade_3 ca.repair_station_state 1

playsound minecraft:block.respawn_anchor.charge block @a[distance=..16] ~ ~ ~ 1 2

data modify entity 31182015-1851-6191-8192-000000000010 text set value {"translate":"cartographer.repair_station.upgrade.add","fallback":"+1 %s","color":"#9AFF17","bold":true,"italic":false,"with":[{"translate":"cartographer.repair_station.upgrade.rune.name","fallback":"Repairing Runes"}],"hover_event":{"action":"show_text","value":[{"text":"","italic":false}]}}
scoreboard players set $display_warning ca.repair_station_state 80

execute at 31182015-1851-6191-8192-300000000001 run particle minecraft:happy_villager ~0.2 ~ ~0.2 0.1 0.1 0.1 0 6 normal

function cartographer_repair_stations:station/upgrades/update_cosmetics