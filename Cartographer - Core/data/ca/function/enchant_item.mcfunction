data modify storage cartographer_core:enchant_item data set value {}
$data modify storage cartographer_core:enchant_item data.name set value "$(name)"
$data modify storage cartographer_core:enchant_item data.lvl set value $(lvl)

$data modify storage cartographer_core:enchant_item data.path set from storage cartographer:data_registry enchant_prefix.$(name)

function ca:enchant_item/macro with storage cartographer_core:enchant_item data