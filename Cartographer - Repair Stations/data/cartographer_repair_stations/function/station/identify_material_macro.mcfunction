$execute if score $block ca.repair_station_state matches 1.. run data modify storage cartographer_repair_stations:data display set value {"fallback":"???","translate":"block.minecraft.$(name)"}

$execute unless score $block ca.repair_station_state matches 1.. run data modify storage cartographer_repair_stations:data display set value {"fallback":"???","translate":"item.minecraft.$(name)"}