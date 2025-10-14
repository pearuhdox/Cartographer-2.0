data modify storage cartographer_core:custom_attr data set value {}
$data modify storage cartographer_core:custom_attr data.val set value $(val)
$data modify storage cartographer_core:custom_attr data.op set value $(op)

$data modify storage cartographer_core:custom_attr data.name set from storage cartographer:data_registry custom_attribute_value.$(name)

function ca:add_custom_attr/macro with storage cartographer_core:custom_attr data