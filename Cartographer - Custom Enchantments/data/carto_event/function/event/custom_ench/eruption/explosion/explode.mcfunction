particle minecraft:explosion ~ ~0.3 ~ 0 0 0 0 1 force

playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 0.5 2

function carto_event:event/custom_ench/eruption/explosion/explode_vfx

execute at @s if entity @s[tag=ca.player_spawned] run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_player with storage cartographer:custom_enchantments
execute at @s unless entity @s[tag=ca.player_spawned] run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_enemy with storage cartographer:custom_enchantments

$execute if entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,limit=7,sort=random,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/eruption/explosion/damage with storage carto_event current[-1].parameters
$execute unless entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @a[limit=2,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/eruption/explosion/damage_player
tag @a remove ca.eruption_cdl

$execute as $(owner) at @s if score @s ca.eruption_ct matches 1.. run scoreboard players remove @s ca.eruption_ct 1

scoreboard players remove $count ca.entity_purge_var 1
kill @s

return 0