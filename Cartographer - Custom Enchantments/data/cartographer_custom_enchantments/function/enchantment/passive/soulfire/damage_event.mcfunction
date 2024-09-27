execute on attacker run function cartographer_custom_enchantments:enchantment/passive/soulfire/get_data

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/soulfire/create_flames

execute on attacker run scoreboard players add @s ca.soulfire_tick_cap 1
execute on attacker run function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cap",duration:61,delay:000,parameters:{},merge_behavior:"merge"}