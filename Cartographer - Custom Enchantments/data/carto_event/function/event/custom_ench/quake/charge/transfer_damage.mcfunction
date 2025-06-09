execute store result score $current ca.quake_dmg run data get storage carto_event current[-1].parameters.damage 100
scoreboard players operation $current ca.quake_dmg += @s ca.quake_dmg
execute store result storage carto_event current[-1].parameters.damage double 0.01 run scoreboard players get $current ca.quake_dmg

scoreboard players set @s ca.quake_dmg 0