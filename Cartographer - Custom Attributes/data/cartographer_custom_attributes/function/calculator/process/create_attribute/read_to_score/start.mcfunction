scoreboard players set $percent ca.attr_var 0
scoreboard players set $value ca.attr_var 0

data modify storage cartographer:custom_attributes attribute_parse set value []

$data modify storage cartographer:custom_attributes attribute_parse set from storage cartographer_custom_attributes:calculator custom_attributes.$(attribute)

execute if data storage cartographer:custom_attributes attribute_parse[0] run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/rec

# CHANGED DESIGN - NO LONGER DO THIS - Floor Value at not going below 0 - "negative" attributes such as total of -1 ranged damage don't work
#execute if score $value ca.attr_var matches ..-1 run scoreboard players set $value ca.attr_var 0

scoreboard players set $attr_used ca.attr_var 0
execute unless score $percent ca.attr_var matches 0 run scoreboard players set $attr_used ca.attr_var 1
execute unless score $value ca.attr_var matches 0 run scoreboard players set $attr_used ca.attr_var 1
$execute if score $attr_used ca.attr_var matches 1.. run scoreboard players add $value ca.attr_var $(base_value)

# CHANGED DESIGN - NO LONGER DO THIS - Add 100 to percentage, floor at 0% if value is too low
#execute if score $percent ca.attr_var matches ..-1 run scoreboard players set $percent ca.attr_var 0

scoreboard players add $percent ca.attr_var 100

scoreboard players operation $total ca.attr_var = $value ca.attr_var

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

$scoreboard players operation @s ca.attr_$(attribute)_value = $value ca.attr_var
$scoreboard players operation @s ca.attr_$(attribute)_percent = $percent ca.attr_var
$scoreboard players operation @s ca.attr_$(attribute)_total = $total ca.attr_var

$execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_$(attribute)_value -2000000
$execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_$(attribute)_percent -2000000
$execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_$(attribute)_total -2000000