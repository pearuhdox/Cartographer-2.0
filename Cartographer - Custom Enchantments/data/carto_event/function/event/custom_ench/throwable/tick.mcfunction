$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_grounded] if score @s ca.ench_fleetfoot_lvl matches 1.. unless score @s ca.fleetfoot_cooldown matches 1.. if score @s ca.channeling_time matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/activate
$execute as $(target) at @s if entity @s[tag=ca.throwable_aiming] if score @s ca.ench_repulsion_lvl matches 1.. if score @s ca.channeling_time matches 5 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/channel_activate

$execute as $(target) at @s if entity @s[tag=ca.throwable_aiming] if score @s ca.throwable_time matches ..10 if entity @s[type=player] run function carto_event:event/custom_ench/throwable/charge_vfx_player

$execute as $(target) at @s unless entity @s[tag=ca.throwable_aiming] if score @s ca.throwable_time matches 10.. run function carto_event:event/custom_ench/throwable/throw/do
$execute as $(target) at @s unless entity @s[tag=ca.throwable_aiming] run scoreboard players set @s ca.throwable_time -10000
$execute as $(target) at @s unless entity @s[tag=ca.throwable_aiming] run scoreboard players set @s ca.channeling_time 0

$execute as $(target) at @s unless entity @s[tag=ca.throwable_aiming] run return 0

$execute as $(target) at @s run tag @s remove ca.throwable_aiming


return 1