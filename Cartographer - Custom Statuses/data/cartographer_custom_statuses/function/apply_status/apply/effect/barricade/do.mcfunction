$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

scoreboard players operation $cap ca.apply_status_data = $amplifier ca.apply_status_data
scoreboard players operation $cap ca.apply_status_data *= $2 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].shields int 1 run scoreboard players get $amplifier ca.apply_status_data
execute store result storage cartographer:custom_statuses apply[0].cap int 1 run scoreboard players get $cap ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/barricade/branch with storage cartographer:custom_statuses apply[0]
