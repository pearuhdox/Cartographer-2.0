execute unless predicate cartographer_core:holding/ranged/mainhand unless predicate cartographer_core:holding/ranged/offhand run attribute @s minecraft:oxygen_bonus modifier add ca.attr_chaining_hit_chance_ench_percent 0.0000000001 add_value
execute if predicate cartographer_core:holding/ranged/mainhand run attribute @s minecraft:oxygen_bonus modifier add ca.attr_chaining_hit_chance_ench_percent 0.000000000134 add_value
execute if predicate cartographer_core:holding/ranged/offhand run attribute @s minecraft:oxygen_bonus modifier add ca.attr_chaining_hit_chance_ench_percent 0.000000000134 add_value


$attribute @s minecraft:oxygen_bonus modifier add ca.attr_chaining_hit_amount_ench_value $(value) add_value

function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/chaining_hit_chance
function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/chaining_hit_amount
