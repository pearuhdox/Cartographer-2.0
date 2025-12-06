$execute as $(target) at @s if entity @s[tag=ca.pounce_charging] if score @s ca.pounce_time matches 1..15 if entity @s[type=player] run function carto_event:event/custom_ench/pounce/charge_vfx_player
$execute as $(target) at @s if entity @s[tag=ca.pounce_charging] if score @s ca.pounce_time matches 1..20 if entity @s[type=!player] run function carto_event:event/custom_ench/pounce/charge_vfx_entity

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_grounded] if entity @s[tag=ca.pounce_charging] if score @s ca.channeling_time matches 1 if score @s ca.ench_fleetfoot_lvl matches 1.. unless score @s ca.fleetfoot_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/activate
$execute as $(target) at @s if entity @s[tag=ca.pounce_charging] if score @s ca.channeling_time matches 5 if score @s ca.ench_repulsion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/channel_activate


$execute as $(target) at @s unless entity @s[tag=ca.pounce_charging] if score @s ca.pounce_time matches 15.. run function carto_event:event/custom_ench/pounce/pounce
$execute as $(target) at @s unless entity @s[tag=ca.pounce_charging] run scoreboard players set @s ca.pounce_time -10000
$execute as $(target) at @s unless entity @s[tag=ca.pounce_charging] run scoreboard players set @s ca.channeling_time 0

$execute as $(target) at @s unless entity @s[tag=ca.pounce_charging] run return 0

$execute as $(target) at @s run tag @s remove ca.pounce_charging

return 1