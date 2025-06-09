execute if score $is_player ca.ench_eruption_lvl matches 1 run tag @s add ca.player_spawned
execute if score $is_player ca.ench_eruption_lvl matches 0 run tag @s add ca.enemy_spawned

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.eruption_time 25
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.eruption_time 50

scoreboard players set $user_id ca.ench_eruption_lvl 0
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_eruption_lvl 1

tp @s ~ ~0.65 ~

tag @s add ca.eruption_bomb

data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[0.1f,0.1f,0.1f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;109252754,559891640,-1539178225,849789851],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODA2OWNjMTY2NmI0ZWQ3NjU4N2JiMWE0NGZiYjdhNDM3NWVhMDNjMjZkOWE0N2UzNTdiNDEzOWUzZGEyOGQifX19"}]}}}}
function cartographer_custom_enchantments:enchantment/passive/eruption/custom_skin/directory


$function carto_event:api/create_single_entity_event {event:"custom_ench/eruption/explosion",duration:600,delay:$(delay),parameters:{telegraph:"$(telegraph)",size:$(size),half_size:$(half_size),size_neg_1:$(size_neg_1),damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}
function cartographer_custom_enchantments:enchantment/passive/eruption/custom_statuses/append_status with storage carto_event macro

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity