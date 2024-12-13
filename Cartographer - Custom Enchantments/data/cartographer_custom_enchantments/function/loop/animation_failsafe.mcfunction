execute if score @s ca.lifetime matches 400 run scoreboard players remove $count ca.animations_var 1
execute if score @s ca.lifetime matches 400 run kill @s

scoreboard players add @s ca.lifetime 1

