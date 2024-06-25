$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

$scoreboard players set $cap ca.apply_status_data $(cap)

scoreboard players add $amplifier ca.apply_status_data 1
#scoreboard players operation $amplifier ca.apply_status_data *= $2 ca.CONSTANT

$scoreboard players set $seconds ca.apply_status_data $(duration)
scoreboard players operation $seconds ca.apply_status_data /= $20 ca.CONSTANT

execute store result storage cartographer:custom_statuses apply[0].amount int 1 run scoreboard players get $amplifier ca.apply_status_data
execute store result storage cartographer:custom_statuses apply[0].seconds int 1 run scoreboard players get $seconds ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/instant_absorption/branch with storage cartographer:custom_statuses apply[0]
