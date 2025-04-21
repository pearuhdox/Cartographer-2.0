$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.deadeye_owner]

execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/deadeye/knockback_mob

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_deadeye_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/deadeye/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_deadeye_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/deadeye/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_deadeye_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/deadeye/custom_statuses/status_self_mob


tag @s add ca.deadeye_cdl
function carto_event:api/create_single_entity_event {event:"custom_ench/deadeye/cooldown",duration:30,delay:0,parameters:{},merge_behavior:"custom"}

scoreboard players set $hit ca.ench_deadeye_lvl 1