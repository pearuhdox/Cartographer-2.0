
data merge entity @s {transformation:[0.7071f,-0.7071f,0.0000f,0.0000f,0.6935f,0.6935f,-0.1952f,0.5762f,0.1381f,0.1381f,0.9808f,0.4268f,0.0000f,0.0000f,0.0000f,1.0000f]}

execute if score @s dies.object.display.rotation matches 1 run tp @s ~ ~ ~ 0 0
execute if score @s dies.object.display.rotation matches 2 run tp @s ~ ~ ~ 45 0
execute if score @s dies.object.display.rotation matches 3 run tp @s ~ ~ ~ 90 0
execute if score @s dies.object.display.rotation matches 4 run tp @s ~ ~ ~ 135 0
execute if score @s dies.object.display.rotation matches 5 run tp @s ~ ~ ~ 180 0
execute if score @s dies.object.display.rotation matches 6 run tp @s ~ ~ ~ -135 0
execute if score @s dies.object.display.rotation matches 7 run tp @s ~ ~ ~ -90 0
execute if score @s dies.object.display.rotation matches 8 run tp @s ~ ~ ~ -45 0
