$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

scoreboard players set $cooldown ca.apply_status_data 300

execute if score $amplifier ca.apply_status_data matches 1.. run function cartographer_custom_statuses:apply_status/apply/effect/nullify/rec

execute store result storage cartographer:custom_statuses apply[0].cooldown int 1 run scoreboard players get $cooldown ca.apply_status_data
function cartographer_custom_statuses:apply_status/apply/effect/nullify/branch with storage cartographer:custom_statuses apply[0]
