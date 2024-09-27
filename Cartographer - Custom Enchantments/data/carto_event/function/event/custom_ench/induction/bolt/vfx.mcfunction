scoreboard players remove @s ca.raycast 1

particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.941,1.000,0.561],scale:1.0} ^ ^ ^0.125 0.15 0.15 0.15 0.1 2 normal
particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.941,1.000,0.561],scale:1.0} ^ ^ ^-0.125 0.15 0.15 0.15 0.1 2 normal

particle minecraft:firework ^ ^ ^ 0.15 0.15 0.15 0.1 1 normal

scoreboard players set $end ca.raycast 0
$execute as $(previous) if entity @s[dx=0,dy=0,dz=0] positioned ~-0.65 ~-0.65 ~-0.65 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set $end ca.raycast 1
execute if score $end ca.raycast matches 1.. run scoreboard players set @s ca.raycast 0


execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.25 run function carto_event:event/custom_ench/induction/bolt/vfx with storage carto_event current[-1].parameters