effect clear @s invisibility

tag @s remove ca.has_custom_status_stealth_player
tag @s remove ca.remove_stealth_player

playsound minecraft:block.anvil.place hostile @a[distance=..12] ~ ~ ~ 0.5 2
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..12] ~ ~ ~ 1 0.5
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..12] ~ ~ ~ 1.5 1.5

particle minecraft:gust ~ ~0.35 ~ 0.35 0.15 0.35 0 4 normal
particle minecraft:large_smoke ~ ~0.35 ~ 0.35 0.15 0.35 0.05 8 normal

scoreboard players set $end_stealth ca.status_var 1