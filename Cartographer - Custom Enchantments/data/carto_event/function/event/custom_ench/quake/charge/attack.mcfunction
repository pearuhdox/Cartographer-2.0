execute if entity @s[tag=ca.player_spawned] run playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..16] ~ ~ ~ 0.10 0.85
execute unless entity @s[tag=ca.player_spawned] run playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..16] ~ ~ ~ 0.15 0.85

$execute rotated ~15 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~30 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~45 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~60 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part

$execute rotated ~75 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~90 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~105 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~120 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part

$execute rotated ~135 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~150 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~165 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~180 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part

$execute rotated ~195 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~210 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~225 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~240 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part

$execute rotated ~255 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~270 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~285 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~300 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part

$execute rotated ~315 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~330 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~345 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part
$execute rotated ~360 0 positioned ^ ^ ^$(size) run function carto_event:event/custom_ench/quake/charge/attack_part


$execute rotated ~30 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~60 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0

$execute rotated ~90 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~120 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0

$execute rotated ~150 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~180 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0

$execute rotated ~210 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~240 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0

$execute rotated ~270 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~300 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0

$execute rotated ~330 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0
$execute rotated ~360 0 positioned ^ ^ ^0.5 run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ ^ ^100000 ^ 0.00000000000001 0