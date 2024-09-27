function bb:lib/pldata/read
data modify storage cartographer_custom_attributes:calculator equips_custom.main set from entity @s SelectedItem.components.minecraft:custom_data.custom_attributes
data modify storage cartographer_custom_attributes:calculator equips_attr.main set from entity @s SelectedItem.components.minecraft:attribute_modifiers.modifiers
