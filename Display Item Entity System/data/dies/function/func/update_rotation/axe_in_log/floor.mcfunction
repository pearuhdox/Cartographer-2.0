
data merge entity @s {transformation:[-0.1690f,-0.9856f,0.0000f,-0.3467f,0.9856f,-0.1690f,0.0000f,-0.0065f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

execute if score @s dies.object.display.rotation matches 1 run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.display.rotation matches 2 run tp @s ~ ~ ~ 45 0
execute if score @s dies.object.display.rotation matches 3 run tp @s ~ ~ ~ 90 0
execute if score @s dies.object.display.rotation matches 4 run tp @s ~ ~ ~ 135 0
execute if score @s dies.object.display.rotation matches 5 run tp @s ~ ~ ~ 180 0
execute if score @s dies.object.display.rotation matches 6 run tp @s ~ ~ ~ -135 0
execute if score @s dies.object.display.rotation matches 7 run tp @s ~ ~ ~ -90 0
execute if score @s dies.object.display.rotation matches 8 run tp @s ~ ~ ~ -45 0