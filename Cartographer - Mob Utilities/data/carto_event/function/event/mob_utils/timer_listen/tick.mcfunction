$execute as $(target) at @s unless score @s ca.timer_count >= @s ca.timer_var run scoreboard players add @s ca.timer_count 1 

$execute as $(target) at @s if score @s ca.timer_count = @s ca.timer_var run function carto_event:event/mob_utils/timer_listen/attempt
$execute as $(target) at @s if score @s ca.timer_count = @s ca.timer_var run scoreboard players set @s ca.timer_count 0

$execute as $(target) at @s if entity @s[tag=ca.stop_listen_timer] run return 0

$execute as $(target) at @s run return 1
return 0