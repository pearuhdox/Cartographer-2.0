scoreboard players set $blocked ca.defiance_var 0


execute if entity @s[tag=ca.has_custom_status_evasion] if score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players set $blocked ca.defiance_var 1
execute if entity @s[tag=ca.has_custom_status_evasion_ench] if score @s ca.evasion_chance <= @s ca.evasion_amount run scoreboard players set $blocked ca.defiance_var 1

execute if entity @s[tag=ca.has_custom_status_nullify] unless score @s ca.nullify_cooldown matches 1.. run scoreboard players set $blocked ca.defiance_var 1
execute if entity @s[tag=ca.has_custom_status_nullify_ench] unless score @s ca.nullify_cooldown matches 1.. run scoreboard players set $blocked ca.defiance_var 1

execute if entity @s[tag=ca.has_custom_status_barricade] run scoreboard players set $blocked ca.defiance_var 1


execute store result score $health ca.defiance_var run data get entity @s Health 100

execute unless score $blocked ca.defiance_var matches 1.. if score $health ca.defiance_var <= @s ca.resistor_queue run function carto_event:event/custom_statuses/defiance/proc with storage carto_event current[-1].parameters
execute unless score $blocked ca.defiance_var matches 1.. if score @s ca.resistor_queue matches 1.. unless score $health ca.defiance_var <= @s ca.resistor_queue run function cartographer_core:handlers/resistor/damage_player/start

scoreboard players set @s ca.resistor_queue 0