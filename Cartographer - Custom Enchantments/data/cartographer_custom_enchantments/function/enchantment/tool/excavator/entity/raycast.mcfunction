#particle minecraft:dust{color:[1.0,0.4,0.4],scale:1.2} ^ ^ ^-0.33 0 0 0 0 1 force
#particle minecraft:dust{color:[1.0,0.4,0.4],scale:1.2} ^ ^ ^-0.66 0 0 0 0 1 force
#particle minecraft:dust{color:[1.0,0.4,0.4],scale:1.2} ^ ^ ^-1 0 0 0 0 1 force

execute if score @s ca.raycast matches 1.. unless block ~ ~ ~ #cartographer_core:can_raycast rotated 0 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/break_test

scoreboard players remove @s ca.raycast 1

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=0,dz=0,gamemode=!creative,gamemode=!spectator] positioned ~0.5 ~0.5 ~0.5 run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/raycast