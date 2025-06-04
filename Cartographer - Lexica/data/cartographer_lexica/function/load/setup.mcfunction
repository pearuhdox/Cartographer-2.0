#Trigger scoreboards for menus
scoreboard objectives add lexica trigger

scoreboard objectives add ca.lexica_var dummy

scoreboard objectives add ca.lexica_state dummy
scoreboard objectives add ca.lexica_slot dummy
scoreboard objectives add ca.lexica_size dummy

#Add Shulker Box which contains the Lexica item - so it can be modified - this will populate if empty when /trigger lexica is ran
setblock 4206900 8 4206900 purple_shulker_box destroy
setblock 4206900 7 4206900 purple_shulker_box destroy
setblock 4206900 6 4206900 purple_shulker_box destroy

function cartographer_lexica:load/create_descriptions
#function cartographer_lexica:load/create_vanilla_descriptions