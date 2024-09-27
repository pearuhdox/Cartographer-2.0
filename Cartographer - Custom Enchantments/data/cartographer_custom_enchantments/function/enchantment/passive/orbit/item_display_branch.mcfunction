execute if score $is_player ca.ench_orbit_lvl matches 1.. run data merge entity @s {teleport_duration:1,billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:firework_explosion":{shape:"small_ball",colors:[I;3930367]}}}}
execute unless score $is_player ca.ench_orbit_lvl matches 1.. run data merge entity @s {teleport_duration:1,billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:firework_star",count:1,components:{"minecraft:firework_explosion":{shape:"small_ball",colors:[I;11743280]}}}}

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments display_entity set from storage gu:main out