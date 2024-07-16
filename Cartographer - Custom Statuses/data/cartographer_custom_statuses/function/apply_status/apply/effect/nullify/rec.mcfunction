scoreboard players operation $cooldown ca.apply_status_data *= $90 ca.CONSTANT
scoreboard players operation $cooldown ca.apply_status_data /= $100 ca.CONSTANT

scoreboard players remove $amplifier ca.apply_status_data 1

execute if score $amplifier ca.apply_status_data matches 1.. run function cartographer_custom_statuses:apply_status/apply/effect/nullify/rec