$scoreboard players set $strength player_motion.api.launch $(strength)
$execute as $(target) at @s anchored feet positioned ^ ^ ^ facing entity $(entity) feet facing ^ ^ ^1 rotated ~ -25 run function player_motion:api/launch_looking

return 0