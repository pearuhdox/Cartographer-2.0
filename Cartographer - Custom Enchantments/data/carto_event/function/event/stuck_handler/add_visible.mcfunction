data merge entity @s {item:{id:"minecraft:arrow",count:1},transformation:[0.0000f,0.0000f,1.0000f,0.0000f,-0.7071f,-0.7071f,0.0000f,-0.1875f,0.7071f,-0.7071f,-0.0000f,0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]}
function carto_event:event/stuck_handler/custom_skin/directory

$scoreboard players set @s ca.stuck_count $(count)

tag @s add ca.stuck_proj_display

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

$tp @s ~ ~ ~ $(rotation) 15

$ride @s mount $(target)