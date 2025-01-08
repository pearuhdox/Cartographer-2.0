playsound minecraft:entity.blaze.hurt player @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:large_smoke ~ ~0.3 ~ 0 0 0 0.05 10 normal

scoreboard players set $created_fireball ca.ench_soulfire_lvl 0

$execute if entity @s[tag=ca.player_spawned] as @e[type=#cartographer_core:affected_by_carto,tag=!ca.soulfire_cdl,limit=1,sort=nearest,distance=..$(length)] at @s run function carto_event:event/custom_ench/soulfire/flames/damage with storage carto_event current[-1].parameters
execute unless entity @s[tag=ca.player_spawned] as @a[limit=1,sort=nearest,tag=!ca.soulfire_cdl] run function carto_event:event/custom_ench/soulfire/flames/damage_player
execute unless score $created_fireball ca.ench_soulfire_lvl matches 1.. unless entity @s[tag=ca.player_spawned] as @a[limit=1,sort=nearest] run function carto_event:event/custom_ench/soulfire/flames/damage_player

scoreboard players remove @s ca.soulfire_count 1

$execute if score @s ca.soulfire_count matches ..0 as $(owner) at @s if score @s ca.soulfire_ct matches 1.. run scoreboard players remove @s ca.soulfire_ct 1
execute if score @s ca.soulfire_count matches ..0 if entity @s[tag=ca.placed_light] if block ~ ~ ~ light run setblock ~ ~ ~ air replace
execute if score @s ca.soulfire_count matches ..0 run scoreboard players remove $count ca.entity_purge_var 1
execute if score @s ca.soulfire_count matches ..0 run kill @s