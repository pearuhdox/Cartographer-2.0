execute if data storage cartographer:custom_attributes attribute_parse[0].percent store result score $percent_add ca.attr_var run data get storage cartographer:custom_attributes attribute_parse[0].percent 100

execute if data storage cartographer:custom_attributes attribute_parse[0].value store result score $value_add ca.attr_var run data get storage cartographer:custom_attributes attribute_parse[0].value 100

scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var

data remove storage cartographer:custom_attributes attribute_parse[0]

execute if data storage cartographer:custom_attributes attribute_parse[0] run function cartographer_custom_attributes:custom_attributes/system/read_to_score/rec
