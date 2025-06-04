data modify block 4206900 0 4206900 Items set value []
item replace block 4206900 0 4206900 container.0 from entity @s player.cursor

execute store result score $rp_cost ca.cursor_anvil run data get block 4206900 0 4206900 Items[0].components.minecraft:repair_cost

execute if score $rp_cost ca.cursor_anvil matches 1..999 run function cartographer_repair_stations:cursor_polish/repair
execute if score $rp_cost ca.cursor_anvil matches 1000.. run function cartographer_repair_stations:cursor_polish/too_expensive
