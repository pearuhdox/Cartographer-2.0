#Revised Unique ID Implementation Courtesy of RockNRed
execute store result score $id_1 ca.id run data get entity @s UUID[0]
execute store result score $id_2 ca.id run data get entity @s UUID[1]

scoreboard players operation $id_1 ca.id *= $id_2 ca.id

execute store result score $id_3 ca.id run data get entity @s UUID[2]

scoreboard players operation $id_1 ca.id *= $id_3 ca.id

execute store result score $id_4 ca.id run data get entity @s UUID[3]

scoreboard players operation $id_1 ca.id *= $id_4 ca.id

execute if score $id_1 ca.id matches -2147483648..0 run scoreboard players operation $id_1 ca.id *= $-1 ca.CONSTANT

scoreboard players operation @s ca.id = $id_1 ca.id
