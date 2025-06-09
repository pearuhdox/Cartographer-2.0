execute store result score $current ca.eruption_dmg run data get storage carto_event current[-1].parameters.damage 100
scoreboard players operation $current ca.eruption_dmg += @s ca.eruption_dmg
execute store result storage carto_event current[-1].parameters.damage double 0.01 run scoreboard players get $current ca.eruption_dmg

scoreboard players set @s ca.eruption_dmg 0