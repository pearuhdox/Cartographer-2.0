scoreboard players set $owned_self ca.apply_status_conditions 0
scoreboard players set $owned_target ca.apply_status_conditions 0

scoreboard players set $is_player ca.apply_status_conditions 0
scoreboard players set $is_entity ca.apply_status_conditions 0

data modify storage cartographer:custom_statuses projectile set value {self:[],target:[],owner:""}

data modify storage cartographer:custom_statuses projectile_data set value {}

execute on origin run function gu:generate
data modify storage cartographer:custom_statuses projectile.owner set from storage gu:main out

execute on origin if entity @s[tag=ca.apply_status_ranged_hit_self] run scoreboard players add $owned_self ca.apply_status_conditions 1
execute on origin if entity @s[tag=ca.apply_status_ranged_hit_target] run scoreboard players add $owned_target ca.apply_status_conditions 1


execute on origin if entity @s[type=player] run scoreboard players set $is_player ca.apply_status_conditions 1
execute on origin unless entity @s[type=player] run scoreboard players set $is_entity ca.apply_status_conditions 1

execute if score $is_player ca.apply_status_conditions matches 1 run function cartographer_custom_statuses:apply_status/apply/throw_bobber_branch_player
execute if score $is_entity ca.apply_status_conditions matches 1 run function cartographer_custom_statuses:apply_status/apply/throw_bobber_branch_entity