scoreboard players remove @s ca.cursor_anvil 1

execute if items entity @s player.cursor *[minecraft:damage~{durability:{min:1}}] run function cartographer_repair_stations:cursor_anvil/check