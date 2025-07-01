scoreboard players set $reset ca.sonic_timer 0

$execute as $(target) at @s store result score @s ca.sonic_timer run data get entity @s Brain.memories."minecraft:sonic_boom_cooldown".ttl
$execute as $(target) at @s if score @s ca.sonic_timer matches 2 if data entity @s anger.suspects[0] run scoreboard players set $reset ca.sonic_timer 1

$execute as $(target) at @s if score $reset ca.sonic_timer matches 1.. run function cartographer_mob_utils:listener/sonic with entity @s data

$execute as $(target) at @s run return 1
return 0