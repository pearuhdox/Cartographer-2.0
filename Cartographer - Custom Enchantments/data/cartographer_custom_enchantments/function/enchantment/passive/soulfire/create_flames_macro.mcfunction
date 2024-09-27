execute if score $is_player ca.ench_soulfire_lvl matches 1 run tag @s add ca.player_spawned
execute if score $is_player ca.ench_soulfire_lvl matches 0 run tag @s add ca.enemy_spawned

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.soulfire_time 30
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.soulfire_time 45

tp @s ~ ~1.15 ~

$function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/flames",duration:600,delay:$(delay),parameters:{length:$(length),damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}