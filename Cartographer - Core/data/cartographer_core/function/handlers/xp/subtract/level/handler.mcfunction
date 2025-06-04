#These functions are split up so they can be run in a separate order if necessary
#This allows them to be run individually if the user would like to interfere with the process

#Check if the player's level is valid
execute store result score $valid ca.xp run function cartographer_core:handlers/xp/subtract/level/check_valid
execute if score $valid ca.xp matches 0 run return 0

#Calculate the number of xp points that need to be removed
function cartographer_core:handlers/xp/subtract/level/get_points

#Do the xp removal in a macro call
function cartographer_core:handlers/xp/subtract/level/do_removal

return 1