execute store result score $current ca.soulfire_dmg run data get storage carto_event current[-1].parameters.damage 100
scoreboard players operation $current ca.soulfire_dmg += @s ca.soulfire_dmg
execute store result storage carto_event current[-1].parameters.damage double 0.01 run scoreboard players get $current ca.soulfire_dmg

scoreboard players set @s ca.soulfire_dmg 0