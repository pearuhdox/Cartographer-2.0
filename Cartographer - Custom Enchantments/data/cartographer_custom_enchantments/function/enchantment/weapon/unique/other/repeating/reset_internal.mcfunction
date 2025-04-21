function cartographer_core:pldata/read

data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item set value {}
data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.arrows set value []

function cartographer_core:pldata/write

tag @s remove ca.repeating_reloading_main
tag @s remove ca.repeating_reloading_offh

tag @s add ca.new_repeating_instance