scoreboard players remove @s ca.raycast 1

execute if entity @s[type=player] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#cartographer_core:affected_by_carto,tag=!ca.shrapnel_hit,dx=0,dy=0,dz=0] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/damage with storage cartographer:custom_enchantments
execute unless entity @s[type=player] positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!ca.shrapnel_hit,dx=0,dy=0,dz=0] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/damage with storage cartographer:custom_enchantments

particle minecraft:dust{color:15326144,scale:1.25} ~ ~ ~ 0 0 0 0 1 normal

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^-0.5 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/path_raycast