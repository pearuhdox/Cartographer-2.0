tag @s add ca.eruption_used_spawner

scoreboard players set $spawner_cause ca.ench_var 1
scoreboard players set $proc ca.ench_eruption_lvl 1

function cartographer_custom_enchantments:enchantment/passive/eruption/get_data

function cartographer_custom_enchantments:enchantment/passive/eruption/attempt_create

scoreboard players add @s ca.eruption_delay 5
scoreboard players add @s ca.eruption_tick_cap 1
function carto_event:api/create_single_entity_event {event:"custom_ench/eruption/cap",duration:1,delay:0,parameters:{},merge_behavior:"none"}

scoreboard players set $spawner_cause ca.ench_var 0
