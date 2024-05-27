scoreboard players operation $damage ca.brittle_hp = @s ca.brittle_hp_past
scoreboard players operation $damage ca.brittle_hp -= @s ca.brittle_hp

scoreboard players operation @s ca.brittle_buildup += $damage ca.brittle_hp

scoreboard players operation $threshold ca.brittle_buildup *= $10 ca.CONSTANT

execute if score @s ca.brittle_buildup >= $threshold ca.brittle_buildup run scoreboard players set $detonate_brittle ca.status_var 1
execute if score @s ca.brittle_buildup >= $threshold ca.brittle_buildup run scoreboard players set $brittle_percent ca.status_var 100