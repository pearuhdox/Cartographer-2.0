scoreboard players set $player ca.custom_trident 0
execute on origin if entity @s[type=player] run scoreboard players set $player ca.custom_trident 1

data modify storage cartographer_custom_attributes:trident motion_x set from entity @s Motion[0]
data modify storage cartographer_custom_attributes:trident motion_y set from entity @s Motion[1]
data modify storage cartographer_custom_attributes:trident motion_z set from entity @s Motion[2]

execute unless score $player ca.custom_trident matches 1.. store result score $y_chance ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_y 1000
execute unless score $player ca.custom_trident matches 1.. run scoreboard players operation $y_chance ca.custom_trident *= $60 ca.CONSTANT
execute unless score $player ca.custom_trident matches 1.. run scoreboard players operation $y_chance ca.custom_trident /= $1000 ca.CONSTANT
execute unless score $player ca.custom_trident matches 1.. store result storage cartographer_custom_attributes:trident motion_y double 0.01 run scoreboard players get $y_chance ca.custom_trident

execute store result score $x_check ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_x 100000
execute store result score $y_check ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_y 100000
execute store result score $z_check ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_z 100000

execute if score $x_check ca.custom_trident matches 0 run data modify storage cartographer_custom_attributes:trident motion_x set value 0.00001d
execute if score $y_check ca.custom_trident matches 0 run data modify storage cartographer_custom_attributes:trident motion_y set value 0.00001d
execute if score $z_check ca.custom_trident matches 0 run data modify storage cartographer_custom_attributes:trident motion_z set value 0.00001d

execute on origin run scoreboard players operation $val ca.custom_trident = @s ca.attr_ranged_damage_value
scoreboard players operation @s ca.attr_ranged_damage_value = $val ca.custom_trident
execute on origin run scoreboard players operation $val ca.custom_trident = @s ca.attr_ranged_damage_percent
scoreboard players operation @s ca.attr_ranged_damage_percent = $val ca.custom_trident