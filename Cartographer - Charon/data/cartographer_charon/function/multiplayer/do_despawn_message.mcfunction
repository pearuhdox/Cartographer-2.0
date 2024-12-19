tellraw @s {"text":"Your shade was not revived, and dropped its items normally.","color":"red","italic":false}
title @s actionbar {"text":"Your shade was not revived.","color":"red","italic":false}

tellraw @a[distance=1..] [{"selector":"@s","color":"yellow","italic":false},{"text":"'s","color":"yellow","italic":false},{"text":" shade has despawned!","color":"red","italic":false}]

gamemode survival @s

data modify storage cartographer:charon x set from entity @s SpawnX
data modify storage cartographer:charon y set from entity @s SpawnY
data modify storage cartographer:charon z set from entity @s SpawnZ

function cartographer_charon:multiplayer/do_despawn_respawn with storage cartographer:charon