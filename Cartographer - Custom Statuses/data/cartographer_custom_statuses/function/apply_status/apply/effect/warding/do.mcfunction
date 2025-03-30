$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

scoreboard players operation $count ca.apply_status_data = $amplifier ca.apply_status_data

scoreboard players add $count ca.apply_status_data 1

execute store result storage cartographer:custom_statuses apply[0].count int 1 run scoreboard players get $count ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/warding/branch with storage cartographer:custom_statuses apply[0]
