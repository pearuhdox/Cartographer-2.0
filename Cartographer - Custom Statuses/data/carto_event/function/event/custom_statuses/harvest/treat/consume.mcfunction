scoreboard players set $consume ca.harvest_var 1

$scoreboard players set @s ca.heal $(heal_amount)
execute if score @s ca.heal matches 1.. run function cartographer_core:helper/heal_player/apply_heal
scoreboard players set @s ca.heal 0

$effect give @s saturation $(sat_amount) 0 true

$scoreboard players set $amount ca.abs_handler $(abs_amount)
$scoreboard players set $duration ca.abs_handler $(abs_seconds)
$scoreboard players set $cap ca.abs_handler $(abs_cap)
function cartographer_core:handlers/absorption/add

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
