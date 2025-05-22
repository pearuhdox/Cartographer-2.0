function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_attributes",category:"custom/",enchantment:"reverb",type:"passive"}

function cartographer_core:fetch_inventory
function cartographer_custom_attributes:custom_attributes/calc_player/chaining_hit_amount
function cartographer_custom_attributes:custom_attributes/calc_player/chaining_hit_chance
function cartographer_custom_attributes:custom_attributes/calc_player/chaining_hit_damage

tag @s add ca.enchant_tick
scoreboard players set $ench_timer ca.timer 10