$data merge entity @s {teleport_duration:3,billboard:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[$(size)f,1.25f,0f],scale:[1.25f,1.25f,1.25f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;863215294,-1780921430,-1773460256,1982824210],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}}}
function cartographer_custom_enchantments:enchantment/passive/orbit/custom_skin/directory

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments display_entity set from storage gu:main out

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

execute if score $is_player ca.ench_orbit_lvl matches 1.. run tag @s add ca.player_spawned

scoreboard players set @s ca.orbit_time 300

execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.orbit_cdl 5
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.orbit_cdl 40

ride @s mount @e[type=item_display,tag=ca.orbit_holder,limit=1,sort=nearest]