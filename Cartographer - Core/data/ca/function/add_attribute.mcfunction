data modify storage cartographer_core:add_attribute data set value {}
$data modify storage cartographer_core:add_attribute data.name set value "$(name)"
$data modify storage cartographer_core:add_attribute data.val set value $(val)
$data modify storage cartographer_core:add_attribute data.op set value "$(op)"
$data modify storage cartographer_core:add_attribute data.slot set value "$(slot)"

$data modify storage cartographer_core:add_attribute data.path set from storage cartographer:data_registry attribute_prefix.$(name)

execute store result storage cartographer_core:add_attribute data.int_uuid int 1 run scoreboard players add $attr_val ca.var 1
execute store result storage cartographer_core:add_attribute data.rand_uuid int 1 run random value 1..2147483647


function ca:add_attribute/macro with storage cartographer_core:add_attribute data