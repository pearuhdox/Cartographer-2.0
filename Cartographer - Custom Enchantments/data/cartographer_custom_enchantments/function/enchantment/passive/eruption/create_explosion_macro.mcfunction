execute if score $is_player ca.ench_eruption_lvl matches 1 run tag @s add ca.player_spawned
execute if score $is_player ca.ench_eruption_lvl matches 0 run tag @s add ca.enemy_spawned

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.eruption_time 10
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.eruption_time 50

tp @s ~ ~0.65 ~

$function carto_event:api/create_single_entity_event {event:"custom_ench/eruption/explosion",duration:600,delay:$(delay),parameters:{size:$(size),half_size:"$(half_size)",size_neg_1:"$(size_neg_1)",damage:"$(damage)",owner:"$(owner)"},merge_behavior:"none"}