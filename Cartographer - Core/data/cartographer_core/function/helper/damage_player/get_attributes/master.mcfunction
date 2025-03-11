scoreboard players set $health_factor ca.damage 100

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from entity @s attributes[{id:"minecraft:max_health"}].modifiers[{operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

function cartographer_core:fetch_inventory

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.main.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.offh.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.feet.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.legs.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.body.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec

data modify storage central:damage attribute_modifiers set value []
data modify storage central:damage attribute_modifiers append from storage cartographer_core:player_equip data.head.components.minecraft:attribute_modifiers.modifiers[{type:"minecraft:max_health",operation:"add_multiplied_base"}]
execute if data storage central:damage attribute_modifiers[0] run function cartographer_core:helper/damage_player/get_attributes/rec