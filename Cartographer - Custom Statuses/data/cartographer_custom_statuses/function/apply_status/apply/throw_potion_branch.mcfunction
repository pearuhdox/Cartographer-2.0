scoreboard players set $player_owned_self ca.apply_status_conditions 0
scoreboard players set $player_owned_target ca.apply_status_conditions 0

data modify storage cartographer:custom_statuses projectile set value {self:[],target:[],owner:""}

data modify storage cartographer:custom_statuses projectile_data set value {}
execute if entity @s[type=potion] run data modify storage cartographer:custom_statuses projectile_data set from entity @s item.components.minecraft:custom_data.apply_status


execute on origin run function gu:generate
data modify storage cartographer:custom_statuses projectile.owner set from storage gu:main out

data modify storage cartographer:custom_statuses projectile.custom_color set from entity @s Item.components."minecraft:potion_contents".custom_color
data modify storage cartographer:custom_statuses projectile.potion set from entity @s Item.components."minecraft:potion_contents".potion

execute on origin if entity @s[tag=ca.apply_status_potion_throw_self] run scoreboard players add $player_owned_self ca.apply_status_conditions 1
execute on origin if entity @s[tag=ca.apply_status_potion_throw_target] run scoreboard players add $player_owned_target ca.apply_status_conditions 1


execute if score $player_owned_self ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"potion_throw",type:"self"}
execute if score $player_owned_self ca.apply_status_conditions matches 1.. on origin run function bb:lib/pldata/write

execute if score $player_owned_target ca.apply_status_conditions matches 1.. run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"potion_throw",type:"target"}
execute if score $player_owned_target ca.apply_status_conditions matches 1.. on origin run function bb:lib/pldata/write

execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.self[0] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"projectile_data",action:"potion_throw",type:"self"}
execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.self[0] on origin run function bb:lib/pldata/write

execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.target[0] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:custom_statuses",path:"projectile_data",action:"potion_throw",type:"target"}
execute if data storage cartographer:custom_statuses projectile_data.ranged_hit.target[0] on origin run function bb:lib/pldata/write