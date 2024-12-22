#$tp @s $(victim)

particle minecraft:portal ~ ~1 ~ 0 0 0 2 70 normal

particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0.2 15 normal

execute if entity @s[type=player] run playsound minecraft:entity.ender_eye.death player @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[type=player] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 1.35

execute unless entity @s[type=player] run playsound minecraft:entity.ender_eye.death hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
execute unless entity @s[type=player] run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1.5 1.35


execute if entity @s[type=player] unless entity @s[tag=ca.ambushing_spawner] anchored eyes positioned ^ ^-0.3 ^ summon item_display run function carto_event:event/custom_ench/ambushing/warp_player_branch with storage carto_event current[-1].parameters
execute if entity @s[type=player] if entity @s[tag=ca.ambushing_spawner] anchored eyes positioned ^ ^-0.3 ^ summon item_display run function carto_event:event/custom_ench/ambushing/warp_player_branch_block with storage carto_event current[-1].parameters


execute if entity @s[type=player] unless entity @s[tag=ca.ambushing_spawner] run function carto_event:event/custom_ench/ambushing/warp_player_macro with storage carto_event current[-1].parameters
execute if entity @s[type=player] if entity @s[tag=ca.ambushing_spawner] run function carto_event:event/custom_ench/ambushing/warp_player_macro_block with storage carto_event current[-1].parameters

tag @s remove ca.ambushing_return
tag @s remove ca.ambushing_spawner