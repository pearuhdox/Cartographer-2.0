function cartographer_core:pldata/read
data modify storage cartographer:player_data main.working_data.infinity set from entity @s Inventory
data modify storage cartographer:player_data main.working_data.infinity_equips set from entity @s equipment
function cartographer_core:pldata/write