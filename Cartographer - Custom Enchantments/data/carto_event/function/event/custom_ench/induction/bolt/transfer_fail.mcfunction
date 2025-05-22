#execute store result score $spread ca.ench_induction_lvl run data get storage carto_event current[-1].parameters.spread
#scoreboard players remove $spread ca.ench_induction_lvl 1
#execute store result storage carto_event current[-1].parameters.spread int 1 run scoreboard players get $spread ca.ench_induction_lvl

function carto_event:event/custom_ench/induction/bolt/transfer_fail_macro with storage carto_event current[-1].parameters