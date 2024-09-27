scoreboard players remove @s ca.raycast 1

scoreboard players operation $raycast_mod ca.ench_soulfire_lvl = @s ca.raycast
scoreboard players operation $raycast_mod ca.ench_soulfire_lvl %= $3 ca.CONSTANT

execute if entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.431,1.000,0.753],scale:1.3,to_color:[0.890,1.000,0.929]} ~ ~ ~ 0 0 0 0 1 normal
execute unless entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[1.000,0.592,0.322],scale:1.0,to_color:[1.000,0.820,0.678]} ~ ~ ~ 0 0 0 0 1 normal

execute if score $raycast_mod ca.ench_soulfire_lvl matches 0 if entity @s[tag=ca.player_spawned] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.05 1 normal
execute if score $raycast_mod ca.ench_soulfire_lvl matches 0 unless entity @s[tag=ca.player_spawned] run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 1 normal

execute if entity @s[distance=..0.5] run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.1 run function carto_event:event/custom_ench/soulfire/flames/raycast_vfx