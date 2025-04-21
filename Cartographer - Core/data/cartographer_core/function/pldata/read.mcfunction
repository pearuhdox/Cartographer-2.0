#Remove working data
data remove storage cartographer:player_data main.working_data
#Store id in storage
execute store result storage cartographer:player_data main.target_id int 1 run scoreboard players get @s bbl.id
#Run branch with stored id
function cartographer_core:pldata/internal/pull_data with storage cartographer:player_data main
