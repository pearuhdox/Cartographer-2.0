data modify storage cartographer_custom_statuses:shocked_proc data set value {}
$data modify storage cartographer_custom_statuses:shocked_proc data.targets set value $(targets)
$data modify storage cartographer_custom_statuses:shocked_proc data.damage set value $(damage)

$scoreboard players set $chain_ct ca.status_var $(chain)
$scoreboard players set $chain_ct_pass ca.status_var $(chain)
execute store result storage cartographer_custom_statuses:shocked_proc data.chain int 1 run scoreboard players remove $chain_ct_pass ca.status_var 1

$data modify storage cartographer_custom_statuses:shocked_proc data.range set value $(range)
$data modify storage cartographer_custom_statuses:shocked_proc data.origin set value "$(origin)"
$data modify storage cartographer_custom_statuses:shocked_proc data.owner set value "$(owner)"

$execute as $(target) at @s run scoreboard players set $shock_particle ca.shock_raycast 20
$execute as $(target) at @s anchored eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/shocked/proc/particle_rec with storage cartographer_custom_statuses:shocked_proc data

$execute as $(target) at @s run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

$execute as $(target) at @s run playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..12] ~ ~ ~ 0.5 2

$execute if score $chain_ct ca.status_var matches 1.. run data modify storage cartographer_custom_statuses:shocked_proc data.origin set value "$(target)"

$tag $(target) add ca.no_shock_chain
$tag $(origin) add ca.no_shock_chain

$execute if score $chain_ct ca.status_var matches 1.. as $(target) at @s if score $chain_ct ca.status_var matches 1.. as @e[type=#bb:hostile,tag=!ca.no_shock_chain,distance=0.25..$(range),sort=nearest,limit=$(targets)] run function carto_event:event/custom_statuses/shocked/proc_start with storage cartographer_custom_statuses:shocked_proc data

$tag $(origin) remove ca.no_shock_chain
$tag $(target) remove ca.no_shock_chain

$execute as $(target) at @s if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

return 0