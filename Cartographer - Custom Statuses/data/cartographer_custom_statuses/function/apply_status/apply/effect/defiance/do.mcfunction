$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

scoreboard players operation $health_floor ca.apply_status_data = $amplifier ca.apply_status_data
scoreboard players operation $health_floor ca.apply_status_data *= $20 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].health_floor int 1 run scoreboard players get $health_floor ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/defiance/branch with storage cartographer:custom_statuses apply[0]
