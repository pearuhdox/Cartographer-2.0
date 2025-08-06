execute unless score @s ca.reload_type matches 0.. run scoreboard players set @s ca.reload_type 0

scoreboard players add @s ehp_listen 1
scoreboard players add @s phe_listen 1
execute unless score @s ca.reload_type matches 0.. run scoreboard players set @s ca.reload_type 0

execute unless score @s ca.id matches 1.. run function cartographer_core:load/player_id

tag @s add ca.init

function cartographer_core:handlers/body_armor_handler/add_default

#say Initialize