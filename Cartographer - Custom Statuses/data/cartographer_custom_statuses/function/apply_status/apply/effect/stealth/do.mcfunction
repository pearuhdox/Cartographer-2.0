$scoreboard players set $amplifier ca.apply_status_data $(amplifier)

$scoreboard players set $visual_seconds ca.apply_status_data $(duration)
scoreboard players operation $visual_seconds ca.apply_status_data /= $20 ca.CONSTANT

scoreboard players set $visible_range ca.apply_status_data 16

scoreboard players add $amplifier ca.apply_status_data 1
scoreboard players operation $amplifier ca.apply_status_data *= $3 ca.CONSTANT

scoreboard players operation $visible_range ca.apply_status_data -= $amplifier ca.apply_status_data

execute store result storage cartographer:custom_statuses apply[0].visible_range int 1 run scoreboard players get $visible_range ca.apply_status_data
execute store result storage cartographer:custom_statuses apply[0].visual_seconds int 1 run scoreboard players get $visual_seconds ca.apply_status_data

function cartographer_custom_statuses:apply_status/apply/effect/stealth/branch with storage cartographer:custom_statuses apply[0]

