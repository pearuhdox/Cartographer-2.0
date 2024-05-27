data modify block 4206900 0 4206900 Items set value []
item replace block 4206900 0 4206900 container.0 from entity @s player.cursor

execute store result score $damage ca.cursor_anvil run data get block 4206900 0 4206900 Items[0].components.minecraft:damage
execute store result score $rp_cost ca.cursor_anvil run data get block 4206900 0 4206900 Items[0].components.minecraft:repair_cost
execute store result score $la_cost ca.cursor_anvil run data get block 4206900 0 4206900 Items[0].components.minecraft:custom_data.LapisCost


execute if score $damage ca.cursor_anvil matches 1.. if score $rp_cost ca.cursor_anvil <= $xp_maximum ca.repair_station_state if score $la_cost ca.cursor_anvil <= $lapis_maximum ca.repair_station_state run function cartographer_repair_stations:cursor_anvil/repair
execute if score $rp_cost ca.cursor_anvil > $xp_maximum ca.repair_station_state run function cartographer_repair_stations:cursor_anvil/too_expensive
execute if score $la_cost ca.cursor_anvil > $lapis_maximum ca.repair_station_state run function cartographer_repair_stations:cursor_anvil/too_expensive_lapis