scoreboard players set $percent ca.attr_var 0
scoreboard players set $value ca.attr_var 0
scoreboard players set $total ca.attr_var 0

data modify storage cartographer:custom_attributes attribute_parse set value []

#Add this to the mob data space so it can be used for enchant calculations
$data modify storage cartographer_custom_attributes:mob_calculator mob_data.$(attribute) append from storage cartographer_custom_attributes:mob_calculator item_data.$(attribute)
$data modify storage cartographer_custom_attributes:mob_calculator mob_data.$(attribute)[-1].id set value "item_applied"


$execute store result score $value ca.attr_var run data get storage cartographer_custom_attributes:mob_calculator item_data.$(attribute).value 100
$execute store result score $percent ca.attr_var run data get storage cartographer_custom_attributes:mob_calculator item_data.$(attribute).percent 100


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