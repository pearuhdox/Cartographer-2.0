execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer_custom_attributes:calculator equips_custom.main set from entity @s SelectedItem.components.minecraft:custom_data.custom_attributes
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer_custom_attributes:calculator equips_attr.main set from entity @s SelectedItem.components.minecraft:attribute_modifiers.modifiers
