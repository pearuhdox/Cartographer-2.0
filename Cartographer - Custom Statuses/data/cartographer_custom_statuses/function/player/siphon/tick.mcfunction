execute if score @s ca.siphon_timer matches 1.. run attribute @s minecraft:movement_speed modifier remove ca.positive_siphon_speed
execute if score @s ca.siphon_timer matches 1.. run attribute @s minecraft:attack_damage modifier remove ca.positive_siphon_strength

execute if score @s ca.siphon_speed_player matches 1.. if predicate cartographer_core:periodic_tick/8 positioned ~ ~1 ~ run particle entity_effect{color:[0.200,0.922,1.000,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal
execute if score @s ca.siphon_strength_player matches 1.. if predicate cartographer_core:periodic_tick/8 positioned ~ ~1 ~ run particle entity_effect{color:[1.000,0.780,0.000,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal

data modify storage cartographer_custom_statuses:siphon player set value {}
execute if score @s ca.siphon_timer matches 2.. store result storage cartographer_custom_statuses:siphon player.speed double 0.01 run scoreboard players get @s ca.siphon_speed_player
execute if score @s ca.siphon_timer matches 2.. store result storage cartographer_custom_statuses:siphon player.strength double 0.01 run scoreboard players get @s ca.siphon_strength_player
execute if score @s ca.siphon_timer matches 2.. run function cartographer_custom_statuses:player/siphon/attributes with storage cartographer_custom_statuses:siphon player



execute if score @s ca.siphon_timer matches 1 run scoreboard players set @s ca.siphon_speed_player 0
execute if score @s ca.siphon_timer matches 1 run scoreboard players set @s ca.siphon_strength_player 0

scoreboard players remove @s ca.siphon_timer 1