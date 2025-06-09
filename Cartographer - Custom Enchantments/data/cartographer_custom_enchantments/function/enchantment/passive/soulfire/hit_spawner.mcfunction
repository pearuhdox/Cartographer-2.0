tag @s add ca.soulfire_used_spawner

scoreboard players set $spawner_cause ca.ench_var 1
scoreboard players operation $soulfire_hand ca.ench_value = @s ca.ench_soulfire_main_lvl
scoreboard players set $proc ca.ench_soulfire_lvl 1

function cartographer_custom_enchantments:enchantment/passive/soulfire/get_data

execute store result score @s ca.raycast run attribute @s block_interaction_range get 10
execute as @s at @s anchored eyes positioned ^ ^ ^0.1 run function cartographer_custom_enchantments:enchantment/helper/spawner_find_block_hit {function:"cartographer_custom_enchantments:enchantment/passive/soulfire/attempt_create",offset:"~ ~-1 ~"}

scoreboard players add @s ca.soulfire_delay 5
scoreboard players add @s ca.soulfire_tick_cap 1
function carto_event:api/create_single_entity_event {event:"custom_ench/soulfire/cap",duration:1,delay:0,parameters:{},merge_behavior:"none"}

scoreboard players set $spawner_cause ca.ench_var 0
