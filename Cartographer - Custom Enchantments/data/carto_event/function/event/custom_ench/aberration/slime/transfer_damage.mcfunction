execute store result score $current ca.aberration_dmg run data get storage carto_event current[-1].parameters.damage 100
scoreboard players operation $current ca.aberration_dmg += @s ca.aberration_dmg
execute store result storage carto_event current[-1].parameters.damage double 0.01 run scoreboard players get $current ca.aberration_dmg

scoreboard players set @s ca.aberration_dmg 0