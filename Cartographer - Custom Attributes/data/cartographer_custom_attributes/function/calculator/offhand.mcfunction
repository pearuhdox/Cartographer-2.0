data modify storage cartographer_custom_attributes:calculator equips_custom set value {}
data modify storage cartographer_custom_attributes:calculator equips_attr set value {}

function bb:lib/pldata/read
data modify storage cartographer_custom_attributes:calculator equips_custom.offh set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:-106b}].components.minecraft:custom_data.custom_attributes
data modify storage cartographer_custom_attributes:calculator equips_attr.offh set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:-106b}].components.minecraft:attribute_modifiers.modifiers
