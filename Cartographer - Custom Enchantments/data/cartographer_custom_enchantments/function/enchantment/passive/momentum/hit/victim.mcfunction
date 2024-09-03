execute store result storage cartographer:custom_enchantments damage double 0.1 run scoreboard players get $damage ca.momentum_stack
execute store result storage cartographer:custom_enchantments aoe double 0.1 run scoreboard players get $aoe ca.momentum_stack

execute anchored feet positioned ^ ^-0.5 ^ run function cartographer_core:handlers/get_block/save
data modify storage cartographer:custom_enchantments block set from storage cartographer_core:get_block id

function cartographer_custom_enchantments:enchantment/passive/momentum/hit/victim_macro with storage cartographer:custom_enchantments
function cartographer_custom_enchantments:enchantment/passive/momentum/hit/vfx with storage cartographer:custom_enchantments