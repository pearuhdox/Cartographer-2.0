playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.2

execute anchored eyes positioned ^ ^ ^ run loot spawn ~ ~-0.2 ~ loot cartographer_custom_statuses:harvest_treat
execute as @e[type=item,nbt={Item:{id:"minecraft:polished_blackstone_button",components:{"minecraft:custom_data":{new_harvest_treat:1b}}}},limit=1,sort=nearest] at @s run function carto_event:event/custom_statuses/harvest/treat/setup with storage carto_event current[-1].parameters

scoreboard players set $spawn_treat ca.harvest_var 1