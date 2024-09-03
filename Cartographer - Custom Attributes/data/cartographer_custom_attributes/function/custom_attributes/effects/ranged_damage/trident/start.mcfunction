scoreboard players set $player ca.custom_trident 0
execute on origin if entity @s[type=player] run scoreboard players set $player ca.custom_trident 1

data modify storage cartographer_custom_attributes:trident motion_x set from entity @s Motion[0]
data modify storage cartographer_custom_attributes:trident motion_y set from entity @s Motion[1]
data modify storage cartographer_custom_attributes:trident motion_z set from entity @s Motion[2]

execute unless score $player ca.custom_trident matches 1.. store result score $y_chance ca.custom_trident run data get storage cartographer_custom_attributes:trident motion_y 100
execute unless score $player ca.custom_trident matches 1.. run scoreboard players operation $y_chance ca.custom_trident *= $60 ca.CONSTANT
execute unless score $player ca.custom_trident matches 1.. run scoreboard players operation $y_chance ca.custom_trident /= $100 ca.CONSTANT
execute unless score $player ca.custom_trident matches 1.. store result storage cartographer_custom_attributes:trident motion_y double 0.01 run scoreboard players get $y_chance ca.custom_trident

function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/convert with storage cartographer_custom_attributes:trident