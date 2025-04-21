execute unless score $dead_player dt.var matches 1.. run scoreboard players add @s ca.lifetime 1

execute unless score @s ca.is_reviving matches 1.. run effect give @s invisibility 1 0 true


scoreboard players operation $mul_mod_20 dt.var = @s ca.lifetime
scoreboard players operation $mul_mod_20 dt.var %= $20 ca.CONSTANT

execute if predicate cartographer_core:periodic_tick/20 run function cartographer_charon:multiplayer/second
#execute if score $mul_mod_20 dt.var matches 1 run damage @s 2 minecraft:out_of_world

effect give @s resistance 1 4 true

execute on vehicle if entity @s[type=sheep] run function cartographer_charon:multiplayer/shade_health_check

particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 5 1 normal

#execute unless data entity @s equipment.mainhand.id run function cartographer_charon:multiplayer/purge

execute if score $shades_auto_revive charon.gmr matches 1.. unless score @s ca.is_reviving matches 1.. if score @s ca.lifetime matches 602.. run function cartographer_charon:multiplayer/do_revive
execute unless score $shades_auto_revive charon.gmr matches 1.. unless score @s ca.is_reviving matches 1.. if score @s ca.lifetime matches 602.. positioned ~ ~-1 ~ run function cartographer_charon:multiplayer/despawn

execute if score $shades_auto_revive charon.gmr matches 1.. unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run team join CharonShadeRespawnSoon @s
execute unless score $shades_auto_revive charon.gmr matches 1.. unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run team join CharonShadeVisualLow @s
execute unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run playsound minecraft:entity.allay.hurt player @a[distance=..25] ~ ~ ~ 4 1.5
execute unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run particle minecraft:glow_squid_ink ~ ~0.5 ~ 0 0 0 0.15 15 normal
execute unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 25 normal
execute unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run particle minecraft:sculk_soul ~ ~0.5 ~ 0 0 0 0.1 25 normal
execute unless entity @s[tag=ca.shade_low] if score @s ca.lifetime matches 400 run tag @s add ca.shade_low

execute if score @s ca.is_reviving matches 1 run playsound minecraft:entity.allay.item_taken player @a ~ ~ ~ 3 0.85

execute if score @s ca.revive_time matches 1.. unless score @s ca.is_reviving matches 1.. run scoreboard players remove @s ca.revive_time 1

execute if score @s ca.is_reviving matches 1.. run scoreboard players remove @s ca.is_reviving 1

execute if score @s ca.revive_cdl matches 1.. run scoreboard players remove @s ca.revive_cdl 1