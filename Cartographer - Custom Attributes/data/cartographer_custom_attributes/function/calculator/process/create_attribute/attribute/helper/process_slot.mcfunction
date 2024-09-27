$execute store result score $apply_var ca.stat_var run data get storage cartographer_custom_attributes:calculator equips_custom.$(slot).$(attr).$(type).amount 100

data modify storage cartographer_custom_attributes:attribute_add data set value {}
$data modify storage cartographer_custom_attributes:attribute_add data.attr set value "$(attr)"
$data modify storage cartographer_custom_attributes:attribute_add data.type set value "$(type)"
$data modify storage cartographer_custom_attributes:attribute_add data.slot set value "$(slot)"
execute store result storage cartographer_custom_attributes:attribute_add data.amount double 0.000000000001 run scoreboard players get $apply_var ca.stat_var

function cartographer_custom_attributes:calculator/process/create_attribute/attribute/helper/create_attribute with storage cartographer_custom_attributes:attribute_add data