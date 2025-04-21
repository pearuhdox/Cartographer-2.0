scoreboard players set $repair_go ca.repair_station_state 0
scoreboard players set $player_lapis ca.repair_station_state 0
scoreboard players set $player_xp ca.repair_station_state 0
scoreboard players set $player_mat ca.repair_station_state 0


execute store result score $player_lapis ca.repair_station_state run clear @s lapis_lazuli[minecraft:enchantments={},!minecraft:custom_data,!minecraft:enchantment_glint_override] 0

execute store result score $player_xp ca.repair_station_state run data get entity @s XpLevel

function cartographer_repair_stations:station/ask_expensive_macro with storage cartographer_repair_stations:data


#Repair Go?
execute if score $player_xp ca.repair_station_state >= $xp_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1
execute if score $player_lapis ca.repair_station_state >= $lapis_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1
execute if score $player_mat ca.repair_station_state >= $mat_cost ca.repair_station_state run scoreboard players add $repair_go ca.repair_station_state 1