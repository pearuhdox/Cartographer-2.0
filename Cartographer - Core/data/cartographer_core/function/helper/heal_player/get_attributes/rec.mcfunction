scoreboard players set $health_factor_add ca.heal 0
execute store result score $health_factor_add ca.heal run data get storage central:heal attribute_modifiers[0].amount 100
scoreboard players operation $health_factor ca.heal += $health_factor_add ca.heal

data remove storage central:heal attribute_modifiers[0]
execute if data storage central:heal attribute_modifiers[0] run function cartographer_core:helper/heal_player/get_attributes/rec