scoreboard players remove $lapis_cost ca.repair_station_state 1

clear @s lapis_lazuli[minecraft:enchantments={},!minecraft:custom_data,!minecraft:enchantment_glint_override] 1

execute if score $lapis_cost ca.repair_station_state matches 1.. run function cartographer_repair_stations:station/extract/lapis_rec