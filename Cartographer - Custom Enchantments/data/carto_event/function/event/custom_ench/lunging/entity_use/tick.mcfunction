$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score duration= carto_event matches 170.. unless entity @s[tag=ca.is_lunging] run tag @s add ca.lunging_charging
$execute as $(target) at @s if score duration= carto_event matches 170.. unless entity @s[tag=ca.is_lunging] run scoreboard players add @s ca.lunging_time 1

$execute as $(target) at @s if score duration= carto_event matches 170.. run attribute @s minecraft:movement_speed modifier add ca.lunging_slow_mob -0.35 add_multiplied_total
$execute as $(target) at @s if score duration= carto_event matches 169 run attribute @s minecraft:movement_speed modifier remove ca.lunging_slow_mob

$execute as $(target) at @s if score duration= carto_event matches 170.. if entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 1..20 if entity @s[type=player] run function carto_event:event/custom_ench/lunging/charge_vfx_player
$execute as $(target) at @s if score duration= carto_event matches 170.. if entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 1..20 if entity @s[type=!player] run function carto_event:event/custom_ench/lunging/charge_vfx_entity


$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 30.. if entity @s[nbt={DeathTime:0s}] run function carto_event:event/custom_ench/lunging/lunge
$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] run scoreboard players set @s ca.lunging_time 0
$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] run scoreboard players set @s ca.channeling_time 0

$execute as $(target) at @s if entity @s[tag=ca.lunging_charging] if entity @s[nbt={DeathTime:0s}] run tag @s remove ca.lunging_charging

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.mob_use_lunging
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.mob_use_lunging

#$say $(telegraph)
$execute if score duration= carto_event matches 177..200 as $(target) at @s on target run tag @s add ca.mob_lunging_target
$execute if score duration= carto_event matches 178..200 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_lunging_target] feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 178..200 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 177 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_lunging_target] feet run tp @s ~ ~ ~ ~ ~
$execute if score duration= carto_event matches 177 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ ~
$execute if score duration= carto_event matches 177..200 as $(target) at @s run tag @a remove ca.mob_lunging_target
$execute if score duration= carto_event matches 170..176 as $(telegraph) positioned as $(target) run tp @s ~ ~ ~
$execute if score duration= carto_event matches 200 as $(target) at @s run scoreboard players operation $size ca.ench_lunging_lvl = @s ca.ench_lunging_lvl
$execute if score duration= carto_event matches 200 as $(telegraph) at @s run function carto_event:event/custom_ench/lunging/entity_use/telegraph_animation
$execute if score duration= carto_event matches 169 as $(telegraph) at @s run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 169 as $(telegraph) at @s run kill @s

$execute if score duration= carto_event matches 170.. as $(target) at @s run scoreboard players operation $warn ca.ench_lunging_lvl = @s ca.ench_lunging_lvl
$execute if score duration= carto_event matches 170.. as $(telegraph) at @s run function carto_event:event/custom_ench/lunging/entity_use/detect_player/start

$execute if score duration= carto_event matches 169 as $(target) at @s if score @s ca.ench_repulsion_lvl matches 1.. unless score @s ca.repulsion_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate

$execute as $(target) at @s if entity @s[nbt={DeathTime:0s}] run return 1
return 0