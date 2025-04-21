data modify storage cartographer_charon:multiplayer_uuid UUID set value []
data modify storage cartographer_charon:multiplayer_uuid UUID set from entity @s equipment.mainhand.components.minecraft:custom_data.Owner

execute as @a run function cartographer_charon:multiplayer/notify/find_player