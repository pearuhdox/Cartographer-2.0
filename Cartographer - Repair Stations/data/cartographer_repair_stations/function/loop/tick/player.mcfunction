execute if score @s ca.cursor_anvil matches 1.. run function cartographer_repair_stations:cursor_anvil/tick
execute if items entity @s player.cursor echo_shard[minecraft:custom_data~{repair_anvil:1b}] run scoreboard players set @s ca.cursor_anvil 2
execute if items entity @s player.cursor echo_shard[minecraft:custom_data~{repair_polish:1b}] run scoreboard players set @s ca.cursor_polish 2
execute if score @s ca.cursor_polish matches 1.. run function cartographer_repair_stations:cursor_polish/tick

#execute if score @s[gamemode=!creative,gamemode=!spectator] ca.repair_anvil_place matches 1.. run function cartographer_repair_stations:repair_anvil/func/place_anvil/main
#execute if score @s[gamemode=!creative,gamemode=!spectator] ca.repair_anvil_use matches 1.. run function cartographer_repair_stations:repair_anvil/func/use_anvil/main

execute if score @s ca.place_repair matches 1.. run function cartographer_repair_stations:place/master

execute unless score $no_tesseract ca.gamerule matches 1.. if entity @s[tag=ca.check_tesseract] run function cartographer_repair_stations:tesseract/move_to_tesseract
execute if score $no_tesseract ca.gamerule matches 1.. run scoreboard players set @s ca.tesseract 0