scoreboard players remove @s ca.raycast 1

execute positioned ^ ^ ^1 run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 run function carto_event:event/custom_ench/thrusting/entity/vfx/recurse