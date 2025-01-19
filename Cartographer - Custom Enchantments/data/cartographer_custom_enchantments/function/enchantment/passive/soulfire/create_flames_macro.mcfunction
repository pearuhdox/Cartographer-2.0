execute if score $is_player ca.ench_soulfire_lvl matches 1 run tag @s add ca.player_spawned
execute if score $is_player ca.ench_soulfire_lvl matches 0 run tag @s add ca.enemy_spawned

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.soulfire_time 30
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.soulfire_time 45

scoreboard players set $user_id ca.ench_soulfire_lvl 0
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_soulfire_lvl 1

data merge entity @s {interpolation_duration:0,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.6f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1537587122,122176614,-1441281439,1825100598],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE5YzY1YWNhMDg3NDFlZjlkMjI5NDFlNWQ0ZmVjNzVmNjFkOWMwZTk1YmFlZGFiYjdmN2NiNDJmODFlN2FiYyJ9fX0="}]}}}}
function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_skin/directory


execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.soulfire_count 4
execute unless entity @s[tag=ca.player_spawned] run scoreboard players operation @s ca.soulfire_count = $lvl ca.ench_soulfire_lvl
execute unless entity @s[tag=ca.player_spawned] run scoreboard players add @s ca.soulfire_count 3

tag @s add ca.soulfire_display

tp @s ~ ~1.15 ~

$function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/flames",duration:600,delay:$(delay),parameters:{length:$(length),damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}
function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_statuses/append_status with storage carto_event macro

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity