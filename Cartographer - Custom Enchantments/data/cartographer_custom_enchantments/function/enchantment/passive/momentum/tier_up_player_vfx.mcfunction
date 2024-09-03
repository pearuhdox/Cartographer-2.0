scoreboard players set $vfx ca.momentum_stack 0

execute if score @s ca.momentum_stack matches 3334.. if score $previous ca.momentum_stack matches ..3333 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 6667.. if score $previous ca.momentum_stack matches ..6666 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 10000.. if score $previous ca.momentum_stack matches ..9999 run scoreboard players set $vfx ca.momentum_stack 1

execute if score $vfx ca.momentum_stack matches 1.. run playsound minecraft:entity.breeze.idle_air player @s ~ ~ ~ 0.25 1
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 10000.. run playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 1
