#execute if entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[0.431,1.000,0.753],scale:2,to_color:[0.890,1.000,0.929]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
execute if entity @s[tag=ca.player_spawned] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0 0.2 0.02 1 normal

#execute unless entity @s[tag=ca.player_spawned] run particle minecraft:dust_color_transition{from_color:[1.000,0.592,0.322],scale:2,to_color:[1.000,0.820,0.678]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
execute unless entity @s[tag=ca.player_spawned] run particle minecraft:flame ~ ~ ~ 0.2 0 0.2 0.02 1 normal

execute if entity @s[tag=ca.player_spawned] if score @s ca.soulfire_animation matches 21 run playsound minecraft:block.fire.ambient player @a[distance=..16] ~ ~ ~ 1 0.75
execute unless entity @s[tag=ca.player_spawned] if score @s ca.soulfire_animation matches 21 run playsound minecraft:block.fire.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute if score @s ca.soulfire_animation matches 21 store result score $placed_light ca.ench_soulfire_lvl run setblock ~ ~ ~ light[level=12] keep
execute if score @s ca.soulfire_animation matches 21 if score $placed_light ca.ench_soulfire_lvl matches 1 run tag @s add ca.placed_light

rotate @s ~30 ~