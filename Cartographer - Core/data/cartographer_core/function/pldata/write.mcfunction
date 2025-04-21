#Store id in storage
execute store result storage cartographer:player_data main.target_id int 1 run scoreboard players get @s bbl.id
#Run branch with stored id
function cartographer_core:pldata/internal/push_data with storage cartographer:player_data main
