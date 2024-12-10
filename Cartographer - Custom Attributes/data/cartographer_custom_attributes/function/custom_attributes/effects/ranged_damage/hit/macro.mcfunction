execute store result score $silent ca.attr_var run data get entity @s Silent
execute unless score $silent ca.attr_var matches 1.. run data modify entity @s Silent set value 1b

execute unless entity @s[type=player] run damage @s 0.001 cartographer_custom_attributes:attribute_damage_bypass
$execute unless entity @s[type=player] run damage @s $(damage) minecraft:arrow by $(owner)
$execute if entity @s[type=player] run damage @s $(damage) minecraft:arrow

execute unless score $silent ca.attr_var matches 1.. run data modify entity @s Silent set value 0b