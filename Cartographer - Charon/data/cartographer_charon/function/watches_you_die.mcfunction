#Cancel functionality unless a mode is selected
execute unless score $death_drop charon.gmr matches 1.. unless score $cage charon.gmr matches 1.. unless score $trader charon.gmr matches 1.. unless score $collector charon.gmr matches 1.. run return 0

function inv:internal/reset
function inv:save

tag @s add the_one_dying

data modify storage cartographer_charon:player inv set value []

#execute if data storage inv:main inv.all[] run function cartographer_charon:inv/iterate_death
function cartographer_charon:inv/iterate_death

tag @s add watched_die_already

tag @s remove the_one_dying

#Grab player specific data
function cartographer_core:pldata/read

#Save cartographer_charon:player inv to working data - Resets it first
data modify storage cartographer:player_data main.working_data.charon_player.inv set value []
data modify storage cartographer:player_data main.working_data.charon_player.inv set from storage cartographer_charon:player inv

#Push to saved space
function cartographer_core:pldata/write

function cartographer_charon:effect_manager/get_effects

function #minecraft:cartographer/events/player_dies