data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/custom_statuses/check_allow_status

execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.size 2

scoreboard players add @s ca.raycast 2

execute positioned ^ ^0.5 ^-0.5 run function carto_event:event/custom_ench/thrusting/entity/damage_zone/recurse

execute as @a[distance=..32,tag=ca.thrusting_hit] at @s run function carto_event:event/custom_ench/thrusting/entity/damage with storage carto_event current[-1].parameters
tag @a remove ca.thrusting_hit