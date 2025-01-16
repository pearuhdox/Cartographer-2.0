scoreboard players add @s ca.entity_purge_var 1

execute if score @s ca.entity_purge_var matches 100 run scoreboard players remove $count ca.entity_purge_var 1

execute if score @s ca.entity_purge_var matches 100 if entity @s[tag=ca.soulfire_display] run setblock ~ ~ ~ air replace
execute if score @s ca.entity_purge_var matches 100 run kill @s