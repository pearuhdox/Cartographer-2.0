$execute as $(owner) at @s if entity @s[type=player] run scoreboard players set $is_player ca.apply_status_check 1
$execute as $(owner) at @s unless entity @s[type=player] run scoreboard players set $is_entity ca.apply_status_check 1
