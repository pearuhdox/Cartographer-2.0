#execute if entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.431,1.000,0.753],scale:1.3,to_color:[0.890,1.000,0.929]} ~ ~-0.25 ~ 0 0 0 1 1 normal
execute if entity @s[tag=ca.player_spawned] run particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.1 0 0.1 0.02 1 normal

#execute unless entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[1.000,0.592,0.322],scale:1.3,to_color:[1.000,0.820,0.678]} ~ ~-0.25 ~ 0 0 0 1 1 normal
execute unless entity @s[tag=ca.player_spawned] run particle minecraft:flame ~ ~0.25 ~ 0.1 0 0.1 0.02 1 normal


execute if score @s ca.soulfire_animation matches 1 run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.05 10 normal

execute if entity @s[tag=ca.player_spawned] if score @s ca.soulfire_animation matches 1 run playsound minecraft:entity.blaze.ambient player @a[distance=..16] ~ ~ ~ 0.4 2
execute unless entity @s[tag=ca.player_spawned] if score @s ca.soulfire_animation matches 1 run playsound minecraft:entity.blaze.ambient hostile @a[distance=..16] ~ ~ ~ 0.4 2


tp @s ~ ~0.125 ~
rotate @s ~15 ~