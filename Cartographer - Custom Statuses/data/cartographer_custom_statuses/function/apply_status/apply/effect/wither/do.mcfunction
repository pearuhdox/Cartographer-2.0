scoreboard players set $tick_rate ca.apply_status_data 80

$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players add $amplifier ca.apply_status_data 1

function cartographer_custom_statuses:apply_status/apply/effect/wither/rec

execute store result storage cartographer:custom_statuses apply[0].tick_rate int 1 run scoreboard players get $tick_rate ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/wither/branch with storage cartographer:custom_statuses apply[0]
