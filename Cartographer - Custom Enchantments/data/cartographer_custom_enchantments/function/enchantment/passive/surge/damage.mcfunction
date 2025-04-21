particle minecraft:gust ~ ~0.25 ~ 0 0 0 1 1 force

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.surge_owner]

scoreboard players set $surge_hit ca.sprint_time_surge 1

execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/deadeye/knockback_mob

tag @s add ca.surge_cdl

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_surge_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/surge/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_surge_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/surge/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_surge_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/surge/custom_statuses/status_self_mob


function carto_event:api/create_single_entity_event {event:"custom_ench/surge/cooldown",duration:20,delay:0,parameters:{},merge_behavior:"custom"}