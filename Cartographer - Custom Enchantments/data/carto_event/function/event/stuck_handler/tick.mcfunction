$execute as $(target) at @s if score duration= carto_event matches 80 unless entity @s[type=player] run scoreboard players set $rotation ca.ench_var 37
$execute as $(target) at @s if score duration= carto_event matches 80 unless entity @s[type=player] run scoreboard players operation $rotation ca.ench_var *= @s ca.stuck_count
$execute as $(target) at @s if score duration= carto_event matches 80 unless entity @s[type=player] store result storage carto_event current[-1].parameters.rotation int 1 run scoreboard players get $rotation ca.ench_var

$execute as $(target) at @s if score duration= carto_event matches 80 unless entity @s[type=player] summon item_display run function carto_event:event/stuck_handler/add_visible with storage carto_event current[-1].parameters

$execute as $(target) at @s unless entity @s[type=player] if entity @s[nbt={DeathTime:1s}] run function carto_event:event/stuck_handler/remove_all_visible

$execute as $(target) at @s if score duration= carto_event matches 1 unless entity @s[type=player] on passengers if entity @s[type=item_display,tag=ca.stuck_proj_display] run function carto_event:event/stuck_handler/remove_visible
$execute as $(target) at @s if score duration= carto_event matches 1 unless entity @s[type=player] run tag @s remove ca.remove_stuck_visible

$execute as $(target) at @s if score duration= carto_event matches 1 if score @s ca.stuck_count matches 1.. run scoreboard players remove @s ca.stuck_count 1
$execute as $(target) at @s if score duration= carto_event matches 1 if score @s ca.stuck_count matches 1.. run function carto_event:api/create_single_entity_event {event:"stuck_handler",duration:77,delay:003,parameters:{},merge_behavior:"merge"}

return 1