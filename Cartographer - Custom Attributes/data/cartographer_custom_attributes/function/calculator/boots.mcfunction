execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer_custom_attributes:calculator equips_custom.feet set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:100b}].components.minecraft:custom_data.custom_attributes
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage cartographer_custom_attributes:calculator equips_attr.feet set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:100b}].components.minecraft:attribute_modifiers.modifiers

execute unless entity @s[tag=ca.suppress_inv_update] run function cartographer_custom_attributes:calculator/process/start