function bb:lib/pldata/read

data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item set value {}
data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows set value []

function bb:lib/pldata/write

tag @s remove ca.repeating_reloading_main
tag @s remove ca.repeating_reloading_offh

tag @s add ca.new_repeating_instance