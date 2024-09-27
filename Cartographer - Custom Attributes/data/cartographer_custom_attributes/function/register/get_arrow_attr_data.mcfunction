scoreboard players set $var_value ca.attr_var 0
scoreboard players set $now_used_value ca.attr_var 0
$execute store result score $var_value ca.attr_var run data get entity @s item.components.minecraft:custom_data.custom_attributes.$(attribute).value.amount 100

#tellraw @p {"score":{"name":"$var_value","objective":"ca.attr_var"}}

$execute unless score $var_value ca.attr_var matches 0 unless score @s ca.attr_$(attribute)_value matches 1999999.. run scoreboard players set $now_used_value ca.attr_var 1
$execute unless score $var_value ca.attr_var matches 0 run scoreboard players operation @s ca.attr_$(attribute)_value += $var_value ca.attr_var

scoreboard players set $var_percent ca.attr_var 0
scoreboard players set $now_used_percent ca.attr_var 0
$execute store result score $var_percent ca.attr_var run data get entity @s item.components.minecraft:custom_data.custom_attributes.$(attribute).percent.amount 100

$execute unless score $var_percent ca.attr_var matches 0 unless score @s ca.attr_$(attribute)_value matches 1999999.. run scoreboard players set $now_used_percent ca.attr_var 1
$execute unless score $var_percent ca.attr_var matches 0 run scoreboard players operation @s ca.attr_$(attribute)_percent += $var_percent ca.attr_var

#tellraw @p {"score":{"name":"$var_percent","objective":"ca.attr_var"}}

$execute if score $now_used_value ca.attr_var matches 1 unless score @s ca.attr_$(attribute)_value matches 1999999.. run scoreboard players add @s ca.attr_$(attribute)_value $(base_value)
$execute if score $now_used_percent ca.attr_var matches 1 unless score $now_used_value ca.attr_var matches 1 unless score @s ca.attr_$(attribute)_value matches 1999999.. run scoreboard players add @s ca.attr_$(attribute)_value $(base_value)

$execute if score $now_used_percent ca.attr_var matches 1 run scoreboard players add @s ca.attr_$(attribute)_percent 100
$execute if score $now_used_value ca.attr_var matches 1 unless score $now_used_percent ca.attr_var matches 1 unless score @s ca.attr_$(attribute)_percent matches 1999999.. run scoreboard players add @s ca.attr_$(attribute)_percent 100


$scoreboard players operation @s ca.attr_$(attribute)_total = @s ca.attr_$(attribute)_value
$scoreboard players operation @s ca.attr_$(attribute)_total *= @s ca.attr_$(attribute)_percent
$scoreboard players operation @s ca.attr_$(attribute)_total /= $100 ca.CONSTANT

$execute unless score $now_used_value ca.attr_var matches 1.. unless score $now_used_percent ca.attr_var matches 1.. run scoreboard players set @s ca.attr_$(attribute)_value -2000000
$execute unless score $now_used_value ca.attr_var matches 1.. unless score $now_used_percent ca.attr_var matches 1.. run scoreboard players set @s ca.attr_$(attribute)_percent -2000000
$execute unless score $now_used_value ca.attr_var matches 1.. unless score $now_used_percent ca.attr_var matches 1.. run scoreboard players set @s ca.attr_$(attribute)_total -2000000