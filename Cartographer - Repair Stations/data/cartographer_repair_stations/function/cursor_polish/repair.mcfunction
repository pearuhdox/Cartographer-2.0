clear @s echo_shard[minecraft:custom_data~{repair_polish:1b}] 1

playsound minecraft:block.resin.place player @s ~ ~ ~ 1 0.5
playsound minecraft:block.grindstone.use player @s ~ ~ ~ 0.5 1.5

execute store result score $repair_cost ca.cursor_polish run data get block 4206900 0 4206900 Items[0].components.minecraft:repair_cost
scoreboard players add $repair_cost ca.cursor_polish 1
scoreboard players operation $repair_cost ca.cursor_polish /= $2 ca.CONSTANT

scoreboard players remove $repair_cost ca.cursor_polish 1
execute store result block 4206900 0 4206900 Items[0].components.minecraft:repair_cost int 1 run scoreboard players get $repair_cost ca.cursor_polish

execute store result score $repair_cost ca.cursor_polish run data get block 4206900 0 4206900 Items[0].components.minecraft:custom_data.LapisCost
scoreboard players operation $repair_cost ca.cursor_polish /= $2 ca.CONSTANT
execute store result block 4206900 0 4206900 Items[0].components.minecraft:custom_data.LapisCost int 1 run scoreboard players get $repair_cost ca.cursor_polish

loot replace entity @s player.cursor 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

scoreboard players set @s ca.cursor_polish 0