clear @s echo_shard[minecraft:custom_data~{repair_anvil:1b}] 1

playsound minecraft:block.anvil.use player @s ~ ~ ~

item modify entity @s player.cursor bb:repair

scoreboard players set @s ca.cursor_anvil 0