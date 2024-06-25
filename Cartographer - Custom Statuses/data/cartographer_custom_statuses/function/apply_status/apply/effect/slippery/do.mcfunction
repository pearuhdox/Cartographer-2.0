$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1
scoreboard players operation $amplifier ca.apply_status_data *= $30 ca.CONSTANT

scoreboard players add $amplifier ca.apply_status_data 100

execute store result storage cartographer:custom_statuses apply[0].scale int 1 run scoreboard players get $amplifier ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/slippery/branch with storage cartographer:custom_statuses apply[0]
