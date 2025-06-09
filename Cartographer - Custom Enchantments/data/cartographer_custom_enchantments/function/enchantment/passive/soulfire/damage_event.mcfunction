execute on attacker run function cartographer_custom_enchantments:enchantment/passive/soulfire/get_data

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_statuses/check_allow_status
execute if score $allow_statuses ca.ench_soulfire_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_statuses/status_player
execute if score $allow_statuses ca.ench_soulfire_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_statuses/status_mob

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/soulfire/attempt_create

execute on attacker run scoreboard players add @s ca.soulfire_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cap",duration:61,delay:0,parameters:{},merge_behavior:"merge"}