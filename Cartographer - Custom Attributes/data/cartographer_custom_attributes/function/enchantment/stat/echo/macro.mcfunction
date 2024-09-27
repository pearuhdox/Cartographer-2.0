attribute @s minecraft:generic.oxygen_bonus modifier add ca.attr_restrike_chance_ench_percent 0.0000000001 add_value
$attribute @s minecraft:generic.oxygen_bonus modifier add ca.attr_restrike_amount_ench_value $(value) add_value
$attribute @s minecraft:generic.oxygen_bonus modifier add ca.attr_restrike_rate_ench_value -$(rate) add_value

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/restrike_chance
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/restrike_amount
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/restrike_rate
