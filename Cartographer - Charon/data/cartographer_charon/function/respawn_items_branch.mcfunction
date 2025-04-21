#Grab player specific data
function cartographer_core:pldata/read

#Save cartographer_charon:player inv to working data
data modify storage inv:main inv.all set from storage cartographer:player_data main.working_data.charon_player.inv

function cartographer_charon:inv/iterate_respawn

execute if score $give_compass charon.gmr matches 1.. run function cartographer_charon:give/timepiece