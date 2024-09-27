scoreboard players set $potion_throw_self ca.apply_status_check 0
scoreboard players set $potion_throw_target ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/analyze_potion_marker

scoreboard players set $is_player ca.apply_status_check 0
scoreboard players set $is_entity ca.apply_status_check 0

$execute as $(owner) at @s if entity @s[type=player] run scoreboard players set $is_player ca.apply_status_check 1
$execute as $(owner) at @s unless entity @s[type=player] run scoreboard players set $is_entity ca.apply_status_check 1

execute if entity @s[tag=ca.is_lingering] run function cartographer_custom_statuses:apply_status/apply/create_aec with storage cartographer:custom_statuses active_projectile.potion_land

execute unless entity @s[tag=ca.is_lingering] run function cartographer_custom_statuses:apply_status/apply/create_splash with storage cartographer:custom_statuses active_projectile.potion_land
