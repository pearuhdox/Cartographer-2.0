$execute store result score $$(attribute) ca.attr_var run data get storage cartographer:custom_attributes $(attribute) 100

$scoreboard players operation $$(attribute) ca.attr_var += @s ca.attr_$(attribute)_value

$execute if score @s ca.attr_$(attribute)_percent matches -1999999.. run scoreboard players operation $$(attribute) ca.attr_var *= @s ca.attr_$(attribute)_percent
$execute if score @s ca.attr_$(attribute)_percent matches -1999999.. run scoreboard players operation $$(attribute) ca.attr_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_attributes $(attribute) double 0.01 run scoreboard players get $$(attribute) ca.attr_var