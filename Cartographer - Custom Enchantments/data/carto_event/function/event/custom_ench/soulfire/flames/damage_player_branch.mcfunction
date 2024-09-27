$execute unless score $muted_damage ca.ench_soulfire_lvl matches 1.. run damage @s $(damage) cartographer_custom_enchantments:enchant_damage by $(owner)

$execute unless score $muted_damage ca.ench_soulfire_lvl matches 1.. as $(target) store result score @s ca.raycast run data get storage carto_event current[-1].parameters.length 10
$execute unless score $muted_damage ca.ench_soulfire_lvl matches 1.. facing entity $(target) feet positioned ^ ^ ^0.1 as $(target) run function carto_event:event/custom_ench/soulfire/flames/raycast_vfx

execute unless score $muted_damage ca.ench_soulfire_lvl matches 1.. run tag @s add ca.soulfire_cdl
execute unless score $muted_damage ca.ench_soulfire_lvl matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cooldown",duration:9,delay:000,parameters:{},merge_behavior:"none"}
