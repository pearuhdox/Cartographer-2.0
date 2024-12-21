$execute as $(target) at @s if score duration= carto_event matches 170.. unless entity @s[tag=ca.is_ambushing] run tag @s add ca.ambushing_charging
$execute as $(target) at @s if score duration= carto_event matches 170.. unless entity @s[tag=ca.is_ambushing] run scoreboard players add @s ca.ambushing_time 1

$execute as $(target) at @s if score duration= carto_event matches 170.. run attribute @s minecraft:movement_speed modifier add ca.ambushing_slow_mob -0.35 add_multiplied_total
$execute as $(target) at @s if score duration= carto_event matches 169 run attribute @s minecraft:movement_speed modifier remove ca.ambushing_slow_mob

$execute as $(target) at @s if score duration= carto_event matches 170.. if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 1..20 if entity @s[type=player] run function carto_event:event/custom_ench/ambushing/charge_vfx_player
$execute as $(target) at @s if score duration= carto_event matches 170.. if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 1..20 if entity @s[type=!player] run function carto_event:event/custom_ench/ambushing/charge_vfx_entity


$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 20.. run function carto_event:event/custom_ench/ambushing/lunge
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] run scoreboard players set @s ca.ambushing_time 0

$execute as $(target) at @s run tag @s remove ca.ambushing_charging

#Remove return 0 condition


$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.mob_use_ambushing
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.mob_use_ambushing

#$say $(telegraph)
$execute if score duration= carto_event matches 177..200 as $(target) at @s on target run tag @s add ca.mob_ambushing_target
$execute if score duration= carto_event matches 178..200 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_ambushing_target] feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 178..200 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 177 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_ambushing_target] feet run tp @s ~ ~ ~ ~ ~
$execute if score duration= carto_event matches 177 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ ~
$execute if score duration= carto_event matches 177..200 as $(target) at @s run tag @a remove ca.mob_ambushing_target
$execute if score duration= carto_event matches 170..176 as $(telegraph) positioned as $(target) run tp @s ~ ~ ~
$execute if score duration= carto_event matches 200 as $(target) at @s run scoreboard players operation $size ca.ench_ambushing_lvl = @s ca.ench_ambushing_lvl
$execute if score duration= carto_event matches 200 as $(telegraph) at @s run function carto_event:event/custom_ench/ambushing/entity_use/telegraph_animation
$execute if score duration= carto_event matches 169 as $(telegraph) at @s run scoreboard players remove $count ca.animations_var 1
$execute if score duration= carto_event matches 169 as $(telegraph) at @s run kill @s

$execute if score duration= carto_event matches 170.. as $(target) at @s run scoreboard players operation $warn ca.ench_ambushing_lvl = @s ca.ench_ambushing_lvl
$execute if score duration= carto_event matches 170.. as $(telegraph) at @s run function carto_event:event/custom_ench/ambushing/entity_use/detect_player/start


return 1