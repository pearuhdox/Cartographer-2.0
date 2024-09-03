scoreboard players operation $target ca.rand = $fail_recovery ca.harvest_var
scoreboard players set $entropy ca.rand 0
$execute as $(owner) at @s run function cartographer_core:handlers/random/roll

execute if score $success ca.rand matches 1.. run function carto_event:event/custom_statuses/harvest/spawn_treat with storage carto_event current[-1].parameters