scoreboard players add @s ca.quake_size 100
execute store result storage carto_event current[-1].parameters.size double 0.01 run scoreboard players get @s ca.quake_size
execute positioned ~ ~0.2 ~ run function carto_event:event/custom_ench/quake/charge/attack with storage carto_event current[-1].parameters

execute if score @s ca.quake_size >= @s ca.quake_max run scoreboard players remove $count ca.entity_purge_var 1
execute if score @s ca.quake_size >= @s ca.quake_max run kill @s
