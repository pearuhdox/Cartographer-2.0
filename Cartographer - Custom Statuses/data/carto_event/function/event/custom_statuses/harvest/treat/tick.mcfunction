scoreboard players set $consume ca.harvest_var 0

$execute as $(target) at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,dy=1,dz=0,limit=1,sort=nearest] positioned ~0.5 ~0.5 ~0.5 as @a[distance=..$(treat_range),limit=$(treat_targets)] at @s run function carto_event:event/custom_statuses/harvest/treat/consume with storage carto_event current[-1].parameters

$execute as $(target) at @s if score $consume ca.harvest_var matches 1.. run function carto_event:event/custom_statuses/harvest/treat/despawn

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1