$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1
scoreboard players operation $amplifier ca.apply_status_data *= $3 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].damage int 1 run scoreboard players get $amplifier ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/evocation/branch with storage cartographer:custom_statuses apply[0]
