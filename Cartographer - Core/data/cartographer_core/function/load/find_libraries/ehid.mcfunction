scoreboard players set $ehid_pke ca.installed 0
execute if entity @s[tag=pke_listen] run scoreboard players set $ehid_pke ca.installed 1

execute store success score $#lib_ehid ca.installed run advancement grant @s only entityid:player_killed_entity
advancement revoke @s only entityid:player_killed_entity

execute if score $ehid_pke ca.installed matches 1.. run tag @s add pke_listen
