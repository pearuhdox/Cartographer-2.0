execute store result score $current ca.starfall_dmg run data get storage carto_event current[-1].parameters.damage 100
scoreboard players operation $current ca.starfall_dmg += @s ca.starfall_dmg
execute store result storage carto_event current[-1].parameters.damage double 0.01 run scoreboard players get $current ca.starfall_dmg

scoreboard players set @s ca.starfall_dmg 0