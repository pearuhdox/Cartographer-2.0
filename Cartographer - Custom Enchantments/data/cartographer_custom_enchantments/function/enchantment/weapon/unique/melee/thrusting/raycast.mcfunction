scoreboard players remove @s ca.raycast 1

scoreboard players add $no_particle ca.ench_thrusting_lvl 1
execute if score $no_particle ca.ench_thrusting_lvl matches 3.. run particle minecraft:dust{color:[0.8,0.8,0.8],scale:2.0} ^ ^ ^ 0.1 0.1 0.1 0.01 5 normal
execute if score $no_particle ca.ench_thrusting_lvl matches 3.. run particle minecraft:dust{color:[0.8,0.8,0.8],scale:2.0} ^0.75 ^ ^ 0.1 0.1 0.1 0.01 5 normal
execute if score $no_particle ca.ench_thrusting_lvl matches 3.. run particle minecraft:dust{color:[0.8,0.8,0.8],scale:2.0} ^-0.75 ^ ^ 0.1 0.1 0.1 0.01 5 normal

execute positioned ~-1 ~-1 ~-1 as @e[type=#cartographer_core:affected_by_carto,dx=1,dy=2,dz=1,limit=5,sort=nearest,tag=!ca.thrust_hit] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/damage with storage cartographer:custom_enchantments

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/raycast