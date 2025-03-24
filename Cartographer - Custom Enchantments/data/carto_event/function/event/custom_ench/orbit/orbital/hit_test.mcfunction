scoreboard players set $hits ca.ench_orbit_lvl 0

execute if entity @s[tag=ca.player_spawned] positioned ~-0.5 ~ ~-0.5 as @e[type=#bb:hostile,dx=0,dy=0,dz=0,limit=1,sort=nearest] at @s run function carto_event:event/custom_ench/orbit/orbital/damage with storage carto_event current[-1].parameters
execute unless entity @s[tag=ca.player_spawned] positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=0,dz=0] at @s run function carto_event:event/custom_ench/orbit/orbital/damage with storage carto_event current[-1].parameters

execute if entity @s[tag=ca.player_spawned] if score $hits ca.ench_orbit_lvl matches 1.. run scoreboard players set @s ca.orbit_cdl 4
execute unless entity @s[tag=ca.player_spawned] if score $hits ca.ench_orbit_lvl matches 1.. run scoreboard players set @s ca.orbit_cdl 10
execute if score $hits ca.ench_orbit_lvl matches 1.. run scoreboard players add @s ca.orbit_hits 1
execute if score $hits ca.ench_orbit_lvl matches 1.. run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.3 15 normal

execute if entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.412,1.000,1.000],scale:1.0,to_color:[1.0,1.0,1.0]} ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute unless entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.522,0.000,0.000],scale:1.0,to_color:[1.0,1.0,1.0]} ~ ~ ~ 0.1 0.1 0.1 0 1 normal