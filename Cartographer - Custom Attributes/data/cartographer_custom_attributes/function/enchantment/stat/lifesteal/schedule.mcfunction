function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_attributes",category:"custom/",enchantment:"lifesteal",type:"passive"}

function cartographer_core:fetch_inventory
function cartographer_custom_attributes:custom_attributes/calc_player/life_drain_chance
function cartographer_custom_attributes:custom_attributes/calc_player/life_drain_amount

tag @s add ca.enchant_tick
scoreboard players set $ench_timer ca.timer 10