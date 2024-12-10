#execute if data storage carto_event current[-1].parameters.bobber_attr run say bobber attr
#execute if data storage carto_event current[-1].parameters.projectile_hit run say projectile hit

$execute unless data storage carto_event current[-1].parameters.victim as $(target) at @s positioned ~ ~-0.25 ~ as @e[type=#bb:hostile,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[type=#bb:hostile,dx=0,dy=0,dz=0] run function carto_event:event/fishing_bobber/initial_hit


$execute as $(target) at @s run return 1

function carto_event:event/fishing_bobber/pull_hit_check with storage carto_event current[-1].parameters

return 0