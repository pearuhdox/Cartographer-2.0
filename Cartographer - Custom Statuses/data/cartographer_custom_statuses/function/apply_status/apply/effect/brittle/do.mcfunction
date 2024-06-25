$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

scoreboard players operation $damage ca.apply_status_data = $amplifier ca.apply_status_data
scoreboard players operation $damage ca.apply_status_data *= $2 ca.CONSTANT

scoreboard players operation $threshold ca.apply_status_data = $amplifier ca.apply_status_data
scoreboard players operation $threshold ca.apply_status_data *= $3 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].damage int 1 run scoreboard players get $damage ca.apply_status_data
execute store result storage cartographer:custom_statuses apply[0].threshold int 1 run scoreboard players get $threshold ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/brittle/branch with storage cartographer:custom_statuses apply[0]
