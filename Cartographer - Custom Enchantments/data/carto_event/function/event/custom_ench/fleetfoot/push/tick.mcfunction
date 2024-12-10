
$execute as $(target) at @s run particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force

$execute as $(target) at @s if entity @s[type=player] positioned $(x_pos) $(y_pos) $(z_pos) facing entity @s feet positioned $(x_pos) $(y_pos) $(z_pos) run function carto_event:event/custom_ench/fleetfoot/push/do_push_player with storage carto_event current[-1].parameters
$execute as $(target) at @s unless entity @s[type=player] run function carto_event:event/custom_ench/fleetfoot/push/do_push_mob with storage carto_event current[-1].parameters

return 0