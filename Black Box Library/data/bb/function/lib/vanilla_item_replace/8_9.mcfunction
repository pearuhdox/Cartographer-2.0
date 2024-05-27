
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 8 run data modify storage inv:main inv.all[{Slot:8b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.storage matches 9 run data modify storage inv:main inv.all[{Slot:9b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

