function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from entity @s SelectedItem.components.minecraft:custom_data.apply_status
function bb:lib/pldata/write