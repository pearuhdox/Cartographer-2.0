scoreboard players set $pushed ca.ench_fleetfoot_lvl 0

$execute as $(target) at @s run particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force


$execute unless score $pushed ca.ench_fleetfoot_lvl matches 1 as $(target) at @s if entity @s[type=player] positioned $(x_pos) $(y_pos) $(z_pos) unless predicate cartographer_core:player/key_press/forwards unless predicate cartographer_core:player/key_press/left unless predicate cartographer_core:player/key_press/right if predicate cartographer_core:player/key_press/backwards rotated ~ ~ positioned ^ ^-0.2 ^1 facing entity @s feet positioned as @s run function carto_event:event/custom_ench/fleetfoot/push/do_push_player_reset with storage carto_event current[-1].parameters
$execute unless score $pushed ca.ench_fleetfoot_lvl matches 1 as $(target) at @s if entity @s[type=player] positioned $(x_pos) $(y_pos) $(z_pos) unless predicate cartographer_core:player/key_press/forwards unless predicate cartographer_core:player/key_press/backwards unless predicate cartographer_core:player/key_press/right if predicate cartographer_core:player/key_press/left positioned as @s rotated ~ ~ positioned ^-1 ^-0.2 ^ facing entity @s feet positioned as @s run function carto_event:event/custom_ench/fleetfoot/push/do_push_player_reset with storage carto_event current[-1].parameters
$execute unless score $pushed ca.ench_fleetfoot_lvl matches 1 as $(target) at @s if entity @s[type=player] positioned $(x_pos) $(y_pos) $(z_pos) unless predicate cartographer_core:player/key_press/forwards unless predicate cartographer_core:player/key_press/backwards unless predicate cartographer_core:player/key_press/left if predicate cartographer_core:player/key_press/right positioned as @s rotated ~ ~ positioned ^1 ^-0.2 ^ facing entity @s feet positioned as @s run function carto_event:event/custom_ench/fleetfoot/push/do_push_player_reset with storage carto_event current[-1].parameters
$execute unless score $pushed ca.ench_fleetfoot_lvl matches 1 as $(target) at @s if entity @s[type=player] positioned $(x_pos) $(y_pos) $(z_pos) facing entity @s feet positioned as @s run function carto_event:event/custom_ench/fleetfoot/push/do_push_player with storage carto_event current[-1].parameters


$execute as $(target) at @s unless entity @s[type=player] run function carto_event:event/custom_ench/fleetfoot/push/do_push_mob with storage carto_event current[-1].parameters

return 0