scoreboard players set $vfx ca.momentum_stack 0

execute if score @s ca.momentum_stack matches 3334.. if score $previous ca.momentum_stack matches ..3333 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 6667.. if score $previous ca.momentum_stack matches ..6666 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 10000.. if score $previous ca.momentum_stack matches ..9999 run scoreboard players set $vfx ca.momentum_stack 1

execute if score $vfx ca.momentum_stack matches 1.. run playsound minecraft:entity.breeze.idle_air hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 10000.. run playsound minecraft:entity.breeze.charge hostile @a[distance=..16] ~ ~ ~ 1 1

execute if score $vfx ca.momentum_stack matches 1.. unless score @s ca.momentum_stack matches 10000.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 1 15 normal
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 10000.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 1 25 normal

execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 10000.. anchored eyes positioned ^ ^-0.5 ^ run function cartographer_custom_enchantments:enchantment/passive/momentum/popup