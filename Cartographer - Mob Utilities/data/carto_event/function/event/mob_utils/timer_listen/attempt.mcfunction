scoreboard players operation $target ca.rand = @s ca.timer_random
execute if score $target ca.rand matches 0 run scoreboard players set $target ca.rand 100

scoreboard players set $entropy ca.rand 0
function cartographer_core:handlers/random/roll

execute if score $success ca.rand matches 1.. run function cartographer_mob_utils:listener/timer with entity @s data
