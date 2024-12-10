$execute rotated ~15 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~30 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~45 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~60 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~75 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~90 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~105 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~120 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal

$execute rotated ~135 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~150 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~165 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~180 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~195 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~210 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~225 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~240 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal

$execute rotated ~255 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~270 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~285 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~300 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~315 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~330 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~345 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
$execute rotated ~360 ~ positioned ^ ^ ^$(half_size) run particle minecraft:dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 10 normal

execute anchored feet positioned ~ ~-0.5 ~ run function cartographer_core:handlers/get_block/save
data modify storage cartographer:custom_enchantments block set from storage cartographer_core:get_block id

function carto_event:event/custom_ench/slamming/entity/vfx/macro with storage cartographer:custom_enchantments

playsound minecraft:item.mace.smash_ground hostile @a[distance=..16] ~ ~ ~ 1 1.65
playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 0.5