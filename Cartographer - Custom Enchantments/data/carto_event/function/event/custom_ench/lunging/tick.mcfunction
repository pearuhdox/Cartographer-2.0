$execute as $(target) at @s if entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 1..15 if entity @s[type=player] run function carto_event:event/custom_ench/lunging/charge_vfx_player
$execute as $(target) at @s if entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 1..20 if entity @s[type=!player] run function carto_event:event/custom_ench/lunging/charge_vfx_entity

$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] if score @s ca.lunging_time matches 15.. run function carto_event:event/custom_ench/lunging/lunge
$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] run scoreboard players set @s ca.lunging_time 0

$execute as $(target) at @s unless entity @s[tag=ca.lunging_charging] run return 0

$execute as $(target) at @s run tag @s remove ca.lunging_charging


return 1