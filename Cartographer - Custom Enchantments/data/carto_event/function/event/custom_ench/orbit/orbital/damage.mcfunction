data modify storage cartographer:custom_enchantments custom_statuses set value {}
$execute as $(owner) at @s run function carto_event:event/custom_ench/orbit/custom_statuses/check_allow_status

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by $(owner)

$execute as $(owner) if entity @s[type=player] run playsound minecraft:item.trident.hit player @a[distance=..16] ~ ~ ~ 1 0.13
$execute as $(owner) if entity @s[type=player] run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.13 1.5
$execute as $(owner) if entity @s[type=player] run playsound minecraft:entity.iron_golem.damage player @a[distance=..16] ~ ~ ~ 0.23 0.5

$execute as $(owner) unless entity @s[type=player] run playsound minecraft:item.trident.hit hostile @a[distance=..16] ~ ~ ~ 1 0.13
$execute as $(owner) unless entity @s[type=player] run playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..16] ~ ~ ~ 0.13 1.5
$execute as $(owner) unless entity @s[type=player] run playsound minecraft:entity.iron_golem.damage hostile @a[distance=..16] ~ ~ ~ 0.23 0.5

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_orbit_lvl matches 1.. run function carto_event:event/custom_ench/orbit/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_orbit_lvl matches 1.. on attacker if entity @s[type=player] run function carto_event:event/custom_ench/orbit/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_orbit_lvl matches 1.. on attacker unless entity @s[type=player] run function carto_event:event/custom_ench/orbit/custom_statuses/status_self_mob

scoreboard players add $hits ca.ench_orbit_lvl 1

tag @s add ca.orbit_cdl
#function carto_event:api/create_single_entity_event {event:"custom_ench/orbit/cooldown",duration:15,delay:0,parameters:{},merge_behavior:"none"}
