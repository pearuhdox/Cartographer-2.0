scoreboard players add @s ca.raycast 1

execute unless score $hit ca.ench_deadeye_lvl matches 1.. if entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,dx=0,dy=0,dz=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchantment/passive/deadeye/damage with storage cartographer:custom_enchantments
execute unless score $hit ca.ench_deadeye_lvl matches 1.. unless entity @s[type=player] as @a[dx=0,dy=0,dz=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchantment/passive/deadeye/damage with storage cartographer:custom_enchantments

execute if score $hit ca.ench_deadeye_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/deadeye/vfx/start

execute if score $hit ca.ench_deadeye_lvl matches 1.. run scoreboard players operation @s ca.raycast = $end ca.raycast
execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players operation @s ca.raycast = $end ca.raycast

execute if score @s ca.raycast < $end ca.raycast positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_raycast