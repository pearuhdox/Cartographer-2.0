$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1
#scoreboard players operation $amplifier ca.apply_status_data *= $2 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].amount int 10 run scoreboard players get $amplifier ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/instant_healing/branch with storage cartographer:custom_statuses apply[0]
