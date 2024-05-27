data modify storage cartographer_core:helper get_durability set value {}
data modify storage cartographer_core:helper get_durability set from storage cartographer_charon:player temp
function cartographer_core:helper/functions/get_durability/calc_max
scoreboard players operation $max_dur taxes.var = $durability ca.var

execute if score $max_dur taxes.var matches 1.. run function cartographer_charon:taxes/durability/reduce