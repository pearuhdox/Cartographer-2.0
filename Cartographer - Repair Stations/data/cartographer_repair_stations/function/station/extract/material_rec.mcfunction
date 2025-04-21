scoreboard players remove $mat_cost ca.repair_station_state 1

$clear @s $(material)[minecraft:enchantments={},!minecraft:custom_data,!minecraft:enchantment_glint_override] 1

execute if score $mat_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/material_rec with storage cartographer_repair_stations:data