scoreboard players remove @s ca.raycast 1

scoreboard players set $end_vfx ca.restrike_hit_var 0
execute if entity @s[dx=0,dy=0,dz=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set $end_vfx ca.restrike_hit_var 1
execute if score $end_vfx ca.restrike_hit_var matches 1.. run scoreboard players set @s ca.raycast 0
execute if score $end_vfx ca.restrike_hit_var matches 1.. run particle minecraft:crit ~ ~ ~ 0.25 0.25 0.25 0.1 8 normal
execute unless score $end_vfx ca.restrike_hit_var matches 1.. run particle minecraft:dust{color:[0.8,0.8,0.8],scale:1.2} ~ ~ ~ 0 0 0 0 1 normal

execute if score @s ca.raycast matches 1.. rotated ~20 ~ positioned ^ ^ ^0.2 run function carto_event:event/custom_attribute/restrike_hit/raycast

# execute facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~