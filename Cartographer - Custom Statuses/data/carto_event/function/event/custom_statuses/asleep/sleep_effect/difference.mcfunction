$scoreboard players set $percent ca.asleep_var $(damage_multiplier)

scoreboard players operation $damage ca.asleep_var = @s ca.asleep_hp_past
scoreboard players operation $damage ca.asleep_var -= @s ca.asleep_hp

scoreboard players operation $damage ca.asleep_var *= $percent ca.asleep_var
scoreboard players operation $damage ca.asleep_var /= $100 ca.CONSTANT

data modify storage cartographer_custom_statuses:asleep data set value {}
execute store result storage cartographer_custom_statuses:asleep data.damage double 0.1 run scoreboard players get $damage ca.asleep_var

function carto_event:event/custom_statuses/asleep/sleep_effect/damage with storage cartographer_custom_statuses:asleep data

function carto_event:event/custom_statuses/asleep/sleep_effect/remove_effect
