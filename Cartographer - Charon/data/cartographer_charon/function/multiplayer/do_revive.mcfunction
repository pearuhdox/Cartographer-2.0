tag @p add ca.has_revived_before

data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s equipment.mainhand.components.minecraft:custom_data.Owner

execute as @a run function cartographer_charon:multiplayer/warp_player

data modify entity @s Silent set value 1b
data modify entity @s Glowing set value 0b

effect give @s invisibility 1 0 true

playsound minecraft:block.respawn_anchor.deplete player @a[distance=..8] ~ ~ ~ 2 1.5
playsound minecraft:block.bell.resonate player @a[distance=..8] ~ ~ ~ 1 0.75
playsound minecraft:entity.player.levelup player @a[distance=..8] ~ ~ ~ 2 1.2

execute at @s if score $custom_statuses ca.installed matches 1.. as @e[type=#bb:hostile,distance=..10.5] at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/blindness",duration:60,delay:0,parameters:{amount:1.0,tick_command:""},merge_behavior:"custom"}

particle minecraft:glow_squid_ink ~ ~-1 ~ 0.3 0 0.3 0.05 50 normal
particle minecraft:glow ~ ~1 ~ 0.3 0.25 0.3 3 50 normal

execute on passengers run kill @s
execute on vehicle on vehicle on passengers if entity @s[type=interaction] run kill @s
execute on vehicle on vehicle run kill @s
execute on vehicle run kill @s

data modify storage cartographer_charon:multiplayer_bag Item set value {}
data modify storage cartographer_charon:multiplayer_bag Item set from entity @s equipment.mainhand

data remove storage cartographer_charon:multiplayer_bag Item.Slot
data modify block 4206900 60 4206900 Items set value []
data modify block 4206900 60 4206900 Items append from storage cartographer_charon:multiplayer_bag Item

loot give @p[tag=ca.revived_player] mine 4206900 60 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

data modify entity @s equipment set value {}

scoreboard players remove $shades_active dt.var 1

tag @a remove ca.revived_player

kill @s