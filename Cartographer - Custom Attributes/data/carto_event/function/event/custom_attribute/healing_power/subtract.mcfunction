scoreboard players operation @s bbl.damage_queue = $heal ca.healing_power_hp
scoreboard players operation @s bbl.damage_queue *= $-1 ca.CONSTANT
scoreboard players operation @s bbl.damage_queue < $diff10 ca.healing_power_hp

scoreboard players operation $mod_dmg ca.healing_power_hp = @s bbl.damage_queue
scoreboard players operation $mod_dmg ca.healing_power_hp %= $10 ca.CONSTANT
scoreboard players operation @s ca.healing_power_bank_subtract += $mod_dmg ca.healing_power_hp

execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players operation @s ca.healing_power_bank_subtract += $mod_dmg ca.healing_power_hp
execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players add @s bbl.damage_queue 10
execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players remove @s ca.healing_power_bank_subtract 10

execute if score $heal ca.healing_power_hp matches ..-10 run scoreboard players operation @s bbl.damage_queue /= $10 ca.CONSTANT
