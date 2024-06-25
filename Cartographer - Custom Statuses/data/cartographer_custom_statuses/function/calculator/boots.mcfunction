function bb:lib/pldata/read
data modify storage bbl:pldata sudo_root.working_data.cartographer.apply_status_data.equips append from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick[{Slot:100b}].components.minecraft:custom_data.apply_status
function bb:lib/pldata/write

#Start the process here since it runs last
function cartographer_custom_statuses:calculator/process/start