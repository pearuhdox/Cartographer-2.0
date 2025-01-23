$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s unless score @s ca.ambushing_time matches 71.. run scoreboard players add @s ca.ambushing_time 2
$execute as $(target) at @s if score @s ca.ambushing_time matches 1..70 run function carto_event:event/custom_ench/ambushing/charge_vfx_entity

$execute as $(target) at @s if score duration= carto_event matches 2.. run attribute @s minecraft:movement_speed modifier add ca.ambushing_slow_mob -0.35 add_multiplied_total
$execute as $(target) at @s if score duration= carto_event matches 1 run attribute @s minecraft:movement_speed modifier remove ca.ambushing_slow_mob

$execute if score duration= carto_event matches 26..51 as $(telegraph) at @s facing entity $(victim) feet run tp @s ^ ^ ^0.85
$execute if score duration= carto_event matches 26..51 as $(telegraph) at @s facing entity $(victim) feet if block ^ ^ ^0.65 #cartographer_core:can_raycast run tp @s ^ ^ ^0.65
$execute if score duration= carto_event matches 26..51 as $(telegraph) at @s facing entity $(victim) feet if block ^ ^ ^0.5 #cartographer_core:can_raycast run tp @s ^ ^ ^0.65

$execute if score duration= carto_event matches 25 as $(telegraph) at @s unless block ~ ~ ~ #cartographer_core:can_raycast positioned ~ ~1.0 ~ align y positioned ~ ~0.2 ~ run tp @s ~ ~0.2 ~
$execute if score duration= carto_event matches 25 as $(telegraph) at @s if block ~ ~ ~ #cartographer_core:can_raycast align y run tp @s ~ ~0.2 ~

$execute if score duration= carto_event matches 21 as $(telegraph) at @s run function carto_event:event/custom_ench/ambushing/entity_use/telegraph_animation

$execute if score duration= carto_event matches 3..21 as $(telegraph) at @s as @a[distance=..$(half_size)] run function carto_event:event/custom_ench/ambushing/entity_use/warning

$execute if score duration= carto_event matches 2..85 as $(telegraph) at @s run tp @s ~ ~ ~ ~8 ~

$execute if score duration= carto_event matches 2.. as $(target) at @s run tag @s add ca.is_ambushing

$execute if score duration= carto_event matches 1 as $(target) at @s run tp @s $(telegraph)
$execute if score duration= carto_event matches 1 as $(target) at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1.5 0.85
$execute if score duration= carto_event matches 1 as $(target) at @s run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 1.25
$execute if score duration= carto_event matches 1 as $(target) at @s run particle minecraft:gust ~ ~0.5 ~ 0 0 0 0 1 force
$execute if score duration= carto_event matches 1 as $(target) at @s run function carto_event:event/custom_ench/ambushing/entity_use/appear_vfx with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 1 as $(target) at @s positioned ~-$(half_size) ~ ~-$(half_size) as @a[dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~ ~$(half_size) if entity @s[distance=..$(half_size)] run function carto_event:event/custom_ench/ambushing/entity_use/damage with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 1 as $(telegraph) at @s run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 1 as $(telegraph) at @s run kill @s
$execute if score duration= carto_event matches 1 as $(target) at @s run tag @s remove ca.is_ambushing
$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players set @s ca.ambushing_time 0
$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players set @s ca.channeling_time 0

$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.ench_repulsion_lvl matches 1.. unless score @s ca.repulsion_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate

return 1