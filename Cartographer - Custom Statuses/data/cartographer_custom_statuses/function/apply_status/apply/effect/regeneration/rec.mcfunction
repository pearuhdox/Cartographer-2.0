scoreboard players operation $tick_rate ca.apply_status_data /= $2 ca.CONSTANT

execute if score $tick_rate ca.apply_status_data matches 0 run scoreboard players set $tick_rate ca.apply_status_data 1

scoreboard players remove $amplifier ca.apply_status_data 1

execute if score $amplifier ca.apply_status_data matches 1.. run function cartographer_custom_statuses:apply_status/apply/effect/absorption/rec