function cartographer_core:pldata/read

data modify storage cartographer:player_data main.working_data.Charon set value []
data modify storage cartographer:player_data main.working_data.CharonHomePos set from entity @s Pos

function cartographer_core:pldata/write