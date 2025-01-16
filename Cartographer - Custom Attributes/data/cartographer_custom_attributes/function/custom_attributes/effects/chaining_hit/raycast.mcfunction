scoreboard players remove @s ca.raycast 1

execute if score $tier ca.chaining_hit_var matches 1 run particle minecraft:dust{color:[0.800,0.729,0.455],scale:1.2}
execute if score $tier ca.chaining_hit_var matches 2 run particle minecraft:dust{color:[0.800,0.600,0.447],scale:1.2}
execute if score $tier ca.chaining_hit_var matches 3.. run particle minecraft:dust{color:[0.800,0.455,0.455],scale:1.2}


execute if entity @s[dx=0,dy=0,dz=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.2 run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/raycast