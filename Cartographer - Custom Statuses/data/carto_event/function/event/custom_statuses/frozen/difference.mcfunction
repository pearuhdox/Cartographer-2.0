scoreboard players operation $damage ca.frozen_hp = @s ca.frozen_hp_past
scoreboard players operation $damage ca.frozen_hp -= @s ca.frozen_hp

scoreboard players operation @s ca.frozen_buildup += $damage ca.frozen_hp

execute if score @s ca.frozen_buildup >= $shatter ca.frozen_hp run scoreboard players set $shatter_frozen ca.status_var 1
execute if score @s ca.frozen_buildup >= $shatter ca.frozen_hp run scoreboard players set @s ca.frozen_buildup 0