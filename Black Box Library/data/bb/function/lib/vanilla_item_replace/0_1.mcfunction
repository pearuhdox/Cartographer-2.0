

execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 0 run data modify storage inv:main inv.all[{Slot:0b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 1 run data modify storage inv:main inv.all[{Slot:1b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components
