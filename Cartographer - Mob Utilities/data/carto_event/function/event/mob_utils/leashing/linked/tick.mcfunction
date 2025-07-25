
$execute as $(target) at @s as $(owner) if entity @s[distance=..16] run return 1

$execute as $(owner) at @s run function carto_event:event/mob_utils/leashing/linked/delete
$execute as $(target) at @s run function carto_event:event/mob_utils/leashing/linked/delete

return 0