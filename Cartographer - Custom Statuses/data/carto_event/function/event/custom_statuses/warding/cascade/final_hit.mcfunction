$damage @s $(cascade_final_hit_dmg) cartographer_core:almost_true_damage

scoreboard players set $blocked ca.warding_var 0

execute if entity @s[tag=ca.has_custom_status_evasion] if score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players set $blocked ca.warding_var 1
execute if entity @s[tag=ca.has_custom_status_evasion_ench] if score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players set $blocked ca.warding_var 1

execute if entity @s[tag=ca.has_custom_status_nullify] unless score @s ca.nullify_cooldown matches 1.. run scoreboard players set $blocked ca.warding_var 1
execute if entity @s[tag=ca.has_custom_status_nullify_ench] unless score @s ca.nullify_cooldown matches 1.. run scoreboard players set $blocked ca.warding_var 1

execute if entity @s[tag=ca.has_custom_status_barricade] run scoreboard players set $blocked ca.warding_var 1

execute unless score $blocked ca.warding_var matches 1.. run function cartographer_core:handlers/resistor/identify/master
execute unless score $blocked ca.warding_var matches 1.. run function cartographer_core:handlers/resistor/damage_player/start
execute unless score $blocked ca.warding_var matches 1.. run scoreboard players set @s ca.resistor_damage_amt 0
scoreboard players set @s ca.resistor_queue 0
