execute if entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.353,0.678,0.592],scale:2,to_color:[1.000,1.000,1.000]} ~ ~ ~ 0 0 0 0 1 force
execute unless entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.678,0.357,0.345],scale:2,to_color:[1.000,1.000,1.000]} ~ ~ ~ 0 0 0 0 1 force

#particle minecraft:dust_pillar{block_state:"minecraft:dirt"}

execute if entity @s[tag=ca.player_spawned] positioned ~-0.5 ~-1 ~-0.5 as @e[type=#bb:hostile,limit=1,tag=!ca.quake_cdl,dx=0,dy=2,dz=0] at @s run function carto_event:event/custom_ench/quake/charge/damage with storage carto_event current[-1].parameters
execute unless entity @s[tag=ca.player_spawned] positioned ~-0.5 ~-0.5 ~-0.5 as @a[limit=1,tag=!ca.quake_cdl,dx=0,dy=0,dz=0] at @s run function carto_event:event/custom_ench/quake/charge/damage_player with storage carto_event current[-1].parameters