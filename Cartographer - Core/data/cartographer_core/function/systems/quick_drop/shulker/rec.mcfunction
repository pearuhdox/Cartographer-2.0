data modify storage cartographer_core:quick_drop save prepend from storage cartographer_core:quick_drop rec[0].item
data modify storage cartographer_core:quick_drop save[0].Slot set from storage cartographer_core:quick_drop rec[0].slot

data remove storage cartographer_core:quick_drop rec[0]
execute if data storage cartographer_core:quick_drop rec[0] run function cartographer_core:systems/quick_drop/shulker/rec