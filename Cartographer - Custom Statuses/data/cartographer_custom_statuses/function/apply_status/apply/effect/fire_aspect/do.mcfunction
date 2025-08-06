$execute unless entity @s[type=player] run data modify entity @s Fire set value $(duration)s

$execute if entity @s[type=player] run scoreboard players set $fire_time ca.apply_status_data $(duration)
execute if entity @s[type=player] store result storage cartographer:custom_statuses fire_time int 1 run scoreboard players operation $fire_time ca.apply_status_data /= $20 ca.CONSTANT
execute if entity @s[type=player] run function cartographer_core:handlers/ignite/apply with storage cartographer:custom_statuses