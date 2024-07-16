data modify storage cartographer_custom_statuses:dazed data set value {}
execute store result storage cartographer_custom_stautses:dazed data.value double 0.01 run scoreboard players operation @s ca.dazed_max -= @s ca.dazed_value
function carto_event:event/custom_statuses/stunned/dazed/attributes with storage cartographer_custom_stautses:dazed data