scoreboard players operation $damage ca.exposed_hp = @s ca.exposed_hp_past
scoreboard players operation $damage ca.exposed_hp -= @s ca.exposed_hp

scoreboard players operation $damage ca.exposed_hp *= $percent ca.exposed_hp
scoreboard players operation $damage ca.exposed_hp /= $100 ca.CONSTANT

data modify storage cartographer_custom_statuses:exposed data set value {}
execute store result storage cartographer_custom_statuses:exposed data.damage double 0.1 run scoreboard players get $damage ca.exposed_hp
