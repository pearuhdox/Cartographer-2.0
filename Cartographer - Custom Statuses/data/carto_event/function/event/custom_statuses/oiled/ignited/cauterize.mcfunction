scoreboard players operation $cauterize_damage ca.oiled_cauterize = $cauterize_check ca.oiled_cauterize

$scoreboard players set $cauterize_value ca.oiled_cauterize $(cauterize_percent)

scoreboard players operation $cauterize_damage ca.oiled_cauterize *= $cauterize_value ca.oiled_cauterize

scoreboard players operation $cauterize_damage ca.oiled_cauterize /= $100 ca.CONSTANT

data modify storage cartographer_custom_statuses:oiled cauterize set value {}
$data modify storage cartographer_custom_statuses:oiled cauterize.owner set value "$(owner)"
execute store result storage cartographer_custom_statuses:oiled cauterize.damage double 1 run scoreboard players get $cauterize_damage ca.oiled_cauterize

function carto_event:event/custom_statuses/oiled/ignited/cauterize_macro with storage cartographer_custom_statuses:oiled cauterize

execute if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters
