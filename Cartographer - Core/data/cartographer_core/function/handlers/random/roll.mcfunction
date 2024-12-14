#target - the value to be below or equal to, from 1 to 100
#entropy - the amount subtracted to the roll each time to weight the result
#advantage - the amount of rerolls if the event fails
#disadvantage - the amount of rerolls if the event succeeds

scoreboard players set $success ca.rand 0

scoreboard players set $advantage ca.rand 0
scoreboard players set $disadvantage ca.rand 0

execute if score $entropy ca.rand matches ..-31 run scoreboard players set $entropy ca.rand -30

function cartographer_core:handlers/random/func/calc_advantage
function cartographer_core:handlers/random/func/calc_disadvantage

function cartographer_core:handlers/random/func/start

#scoreboard players set $advantage ca.rand 0
#scoreboard players set $disadvantage ca.rand 0
#scoreboard players set $entropy ca.rand 0
#scoreboard players set $target ca.rand 0