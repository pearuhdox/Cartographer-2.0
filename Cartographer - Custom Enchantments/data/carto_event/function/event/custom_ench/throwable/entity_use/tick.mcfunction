$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

#$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.is_lunging] run tag @s add ca.lunging_charging
#$execute as $(target) at @s if score duration= carto_event matches 1.. unless entity @s[tag=ca.is_lunging] run scoreboard players add @s ca.throwable_time 1

$execute as $(target) at @s unless score @s ca.throwable_time matches 21.. unless entity @s[tag=ca.has_thrown] run scoreboard players add @s ca.throwable_time 1

$execute as $(target) at @s unless score @s ca.throwable_time matches 20.. run attribute @s minecraft:movement_speed modifier add ca.throwable_slow_mob -0.35 add_multiplied_total
$execute as $(target) at @s if score @s ca.throwable_time matches 21 run attribute @s minecraft:movement_speed modifier remove ca.throwable_slow_mob

$execute as $(target) at @s if score @s ca.throwable_time matches ..20 run function carto_event:event/custom_ench/throwable/charge_vfx_entity

$execute as $(target) at @s if score @s ca.throwable_time matches 21 at @s rotated as $(telegraph) run function carto_event:event/custom_ench/throwable/entity_use/throw_macro

$execute as $(target) unless score @s ca.throwable_time matches 11.. as $(target) at @s on target run tag @s add ca.mob_throwable_target
$execute as $(target) unless score @s ca.throwable_time matches 10.. as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_throwable_target] feet run tp @s ~ ~ ~ ~ 0
$execute as $(target) unless score @s ca.throwable_time matches 10.. as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ 0
$execute as $(target) if score @s ca.throwable_time matches 11 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_throwable_target] feet run tp @s ~ ~ ~ ~ ~
$execute as $(target) if score @s ca.throwable_time matches 11 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ ~
$execute as $(target) unless score @s ca.throwable_time matches 11.. as $(target) at @s run tag @a remove ca.mob_throwable_target

$execute as $(target) if score @s ca.throwable_time matches 1..15 as $(telegraph) at @s run function carto_event:event/custom_ench/throwable/entity_use/detect_player

$execute as $(target) if score @s ca.throwable_time matches 2 as $(telegraph) at @s run function carto_event:event/custom_ench/throwable/entity_use/telegraph_animation
$execute as $(target) if score @s ca.throwable_time matches 21 as $(telegraph) at @s run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) if score @s ca.throwable_time matches 21 as $(telegraph) at @s run kill @s

$execute as $(target) if score @s ca.throwable_time matches 21 at @s if score @s ca.ench_repulsion_lvl matches 1.. unless score @s ca.repulsion_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate

$execute as $(target) if score @s ca.throwable_time matches 21.. run return run function carto_event:event/custom_ench/throwable/entity_use/end_event

return 1