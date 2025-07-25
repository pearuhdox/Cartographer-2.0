
scoreboard players set $potion_throw_self ca.apply_status_check 0
scoreboard players set $potion_throw_target ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/analyze_potion_marker

scoreboard players set $is_player ca.apply_status_check 0
scoreboard players set $is_entity ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/potion_landed_macro with storage cartographer:custom_statuses active_projectile.potion_land


execute if entity @s[tag=ca.is_lingering] run function cartographer_custom_statuses:apply_status/apply/create_aec with storage cartographer:custom_statuses active_projectile.potion_land

execute unless entity @s[tag=ca.is_lingering] run function cartographer_custom_statuses:apply_status/apply/create_splash with storage cartographer:custom_statuses active_projectile.potion_land
