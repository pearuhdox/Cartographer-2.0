$execute as $(target) at @s if score @s ca.vengeance_duration matches 1.. run scoreboard players remove @s ca.vengeance_duration 1

$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.vengeance_stack = @s ca.vengeance_stack
$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.vengeance_stack *= @s ca.ench_vengeance_lvl
$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players operation $amp ca.vengeance_stack *= $2 ca.CONSTANT

execute if entity @s[tag=ca.used_vengeance_attack] run scoreboard players set @s ca.vengeance_stack 0
execute if entity @s[tag=ca.used_vengeance_attack] run return 0


$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players set @s ca.vengeance_stack 0

return 1