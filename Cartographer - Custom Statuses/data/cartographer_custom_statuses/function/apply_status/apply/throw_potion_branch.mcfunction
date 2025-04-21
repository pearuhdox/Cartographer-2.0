scoreboard players set $owned_self ca.apply_status_conditions 0
scoreboard players set $owned_target ca.apply_status_conditions 0

data modify storage cartographer:custom_statuses projectile set value {self:[],target:[],owner:""}

data modify storage cartographer:custom_statuses projectile_data set value {}
execute if entity @s[type=splash_potion] run data modify storage cartographer:custom_statuses projectile_data set from entity @s item.components.minecraft:custom_data.apply_status
execute if entity @s[type=lingering_potion] run data modify storage cartographer:custom_statuses projectile_data set from entity @s item.components.minecraft:custom_data.apply_status

execute on origin run function cartographer_custom_statuses:apply_status/apply/get_potion_radius
scoreboard players operation @s ca.attr_aoe_size_total = $potion_radius ca.status_var
execute store result storage cartographer:custom_statuses projectile.radius double 0.01 run scoreboard players get $potion_radius ca.status_var

execute on origin run function gu:generate
data modify storage cartographer:custom_statuses projectile.owner set from storage gu:main out

data modify storage cartographer:custom_statuses projectile.custom_color set from entity @s Item.components."minecraft:potion_contents".custom_color
data modify storage cartographer:custom_statuses projectile.potion set from entity @s Item.components."minecraft:potion_contents".potion

execute on origin if entity @s[tag=ca.apply_status_potion_throw_self] run scoreboard players add $owned_self ca.apply_status_conditions 1
execute on origin if entity @s[tag=ca.apply_status_potion_throw_target] run scoreboard players add $owned_target ca.apply_status_conditions 1


execute on origin if entity @s[type=player] run scoreboard players set $is_player ca.apply_status_conditions 1
execute on origin unless entity @s[type=player] run scoreboard players set $is_entity ca.apply_status_conditions 1


execute if score $is_player ca.apply_status_conditions matches 1 run function cartographer_custom_statuses:apply_status/apply/throw_potion_branch_player
execute if score $is_entity ca.apply_status_conditions matches 1 run function cartographer_custom_statuses:apply_status/apply/throw_potion_branch_entity