execute on attacker run function cartographer_custom_enchantments:enchantment/passive/eruption/get_data

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/eruption/create_explosion

execute on attacker run scoreboard players add @s ca.eruption_delay 5
execute on attacker run scoreboard players add @s ca.eruption_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/eruption/cap",duration:1,delay:000,parameters:{},merge_behavior:"none"}