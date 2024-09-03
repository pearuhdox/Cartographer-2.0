data modify storage cartographer:custom_attributes calculator set value {}

$data modify storage cartographer:custom_attributes calculator.attribute set value "$(attribute)"
$data modify storage cartographer:custom_attributes calculator.id set value "ca.$(slot)_applied"

$data modify storage cartographer:custom_attributes calculator.value set from storage bbl:pldata sudo_root.working_data.cartographer.custom_attribute_equips.$(slot).$(attribute).value
$data modify storage cartographer:custom_attributes calculator.percent set from storage bbl:pldata sudo_root.working_data.cartographer.custom_attribute_equips.$(slot).$(attribute).percent

function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_macro with storage cartographer:custom_attributes calculator
