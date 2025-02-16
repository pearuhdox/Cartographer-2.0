tellraw @s {"translate":"cartographer.charon.shade.despawn.notify.chat","fallback":"Your shade was not revived, and dropped its items normally.","color":"red","italic":false}
title @s actionbar {"translate":"cartographer.charon.shade.despawn.notify.actionbar","fallback":"Your shade was not revived.","color":"red","italic":false}

tellraw @a[distance=1..] {"translate":"cartographer.charon.shade.despawn.announce","fallback":"%s shade has despawned!","color":"red","with":[{"translate":"format.grammar.possessive","fallback":"%s\'s","color":"yellow","with":[{"selector":"@s","color":"yellow"}]},{"selector":"@s","color":"yellow"}]}

gamemode survival @s

data modify storage cartographer:charon x set from entity @s SpawnX
data modify storage cartographer:charon y set from entity @s SpawnY
data modify storage cartographer:charon z set from entity @s SpawnZ

function cartographer_charon:multiplayer/do_despawn_respawn with storage cartographer:charon