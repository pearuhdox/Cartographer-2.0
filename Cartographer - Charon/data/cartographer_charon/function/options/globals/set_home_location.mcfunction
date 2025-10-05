
execute store result score $force void_home.x run data get entity @s Pos[0]
execute store result score $force void_home.y run data get entity @s Pos[1]
execute store result score $force void_home.z run data get entity @s Pos[2]

tellraw @s [{"text":"Void Home Set! ","color":"green","italic":false},{"text":"! DO NOT FORGET TO FORCE LOAD THIS CHUNK !","color":"red","italic":false,"bold":true}]
