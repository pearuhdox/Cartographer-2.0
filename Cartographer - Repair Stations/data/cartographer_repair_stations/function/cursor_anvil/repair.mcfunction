clear @s anvil 1

playsound minecraft:block.anvil.use player @s ~ ~ ~

item modify entity @s player.cursor bb:repair

scoreboard players set @s ca.cursor_anvil 0