scoreboard players set $bobber_throw_self ca.apply_status_check 0
scoreboard players set $bobber_throw_target ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/analyze_bobber_marker

scoreboard players set $is_player ca.apply_status_check 0
scoreboard players set $is_entity ca.apply_status_check 0

function cartographer_custom_statuses:apply_status/apply/bobber_landed_macro with storage cartographer:custom_statuses active_projectile.projectile_hit

function cartographer_custom_statuses:apply_status/apply/bobber_inflict_effect with storage cartographer:custom_statuses active_projectile.projectile_hit

execute if score $is_player ca.apply_status_check matches 1.. as @e[type=#cartographer_core:affected_by_carto,limit=1,sort=nearest,dx=0,dy=0,dz=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,dy=0,dz=0] at @s run function cartographer_custom_statuses:apply_status/apply/bobber_inflict_effect with storage cartographer:custom_statuses active_projectile.projectile_hit
execute if score $is_entity ca.apply_status_check matches 1.. as @a[limit=1,sort=nearest,dx=0,dy=0,dz=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0,dy=0,dz=0] at @s run function cartographer_custom_statuses:apply_status/apply/bobber_inflict_effect with storage cartographer:custom_statuses active_projectile.projectile_hit