execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from entity @s SelectedItem.components.minecraft:custom_data.apply_status
execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/write