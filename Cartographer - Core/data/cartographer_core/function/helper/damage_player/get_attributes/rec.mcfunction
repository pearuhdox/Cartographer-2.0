scoreboard players set $health_factor_add ca.damage 0
execute store result score $health_factor_add ca.damage run data get storage central:damage attribute_modifiers[0].amount 100
scoreboard players operation $health_factor ca.damage += $health_factor_add ca.damage

data remove storage central:damage attribute_modifiers[0]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec