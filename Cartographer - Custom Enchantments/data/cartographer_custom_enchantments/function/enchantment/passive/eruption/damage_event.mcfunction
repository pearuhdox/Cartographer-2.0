execute on attacker run function cartographer_custom_enchantments:enchantment/passive/eruption/get_data

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/eruption/custom_statuses/check_allow_status
execute if score $allow_statuses ca.ench_eruption_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/eruption/custom_statuses/status_player
execute if score $allow_statuses ca.ench_eruption_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/eruption/custom_statuses/status_mob

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/eruption/attempt_create

execute on attacker run scoreboard players add @s ca.eruption_delay 5
execute on attacker run scoreboard players add @s ca.eruption_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/eruption/cap",duration:1,delay:0,parameters:{},merge_behavior:"none"}