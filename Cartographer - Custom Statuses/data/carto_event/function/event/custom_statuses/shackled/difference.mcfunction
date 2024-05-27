scoreboard players operation $damage ca.shackled_hp = @s ca.shackled_hp_past
scoreboard players operation $damage ca.shackled_hp -= @s ca.shackled_hp

scoreboard players operation $damage ca.shackled_hp *= $percent ca.shackled_hp
scoreboard players operation $damage ca.shackled_hp /= $100 ca.CONSTANT

data modify storage cartographer_custom_statuses:shackled data set value {}
execute store result storage cartographer_custom_statuses:shackled data.damage double 0.1 run scoreboard players get $damage ca.shackled_hp
