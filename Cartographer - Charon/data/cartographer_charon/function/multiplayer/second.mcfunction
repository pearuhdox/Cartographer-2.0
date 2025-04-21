particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.05 1 force
playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.35 2

data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s equipment.mainhand.components.minecraft:custom_data.Owner

data modify storage gu:main out set value "-"
function gu:convert with storage cartographer_charon:multiplayer_uuid
data modify storage cartographer:charon player set from storage gu:main out

scoreboard players set $time_left ca.revive_time 600
scoreboard players operation $time_left ca.revive_time -= @s ca.lifetime
scoreboard players operation $time_left ca.revive_time /= $20 ca.CONSTANT


function cartographer_charon:multiplayer/second/player_macro with storage cartographer:charon