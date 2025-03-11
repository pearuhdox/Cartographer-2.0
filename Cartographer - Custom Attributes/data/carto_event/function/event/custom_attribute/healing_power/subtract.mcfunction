scoreboard players operation $mod_dmg ca.healing_power_hp = @s ca.damage
scoreboard players operation $mod_dmg ca.healing_power_hp %= $10 ca.CONSTANT
scoreboard players operation @s ca.healing_power_bank_subtract += $mod_dmg ca.healing_power_hp

execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players operation @s ca.healing_power_bank_subtract += $mod_dmg ca.healing_power_hp
execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players add @s ca.damage 10
execute if score @s ca.healing_power_bank_subtract matches 10.. run scoreboard players remove @s ca.healing_power_bank_subtract 10