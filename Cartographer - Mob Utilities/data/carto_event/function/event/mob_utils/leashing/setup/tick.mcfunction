scoreboard players set $linked ca.leash_var 0
$execute as $(target) at @s if entity @s[tag=ca.leash_linked] run scoreboard players set $linked ca.leash_var 1

$execute as $(target) at @s run data modify storage cartographer_mob_utils:leashing data set value {offset:"~ ~ ~",entity_id:"",nbt:""}
$execute as $(target) at @s run data modify storage cartographer_mob_utils:leashing data.UUID set from entity @s UUID

data modify storage gu:main out set value "-"
$execute as $(target) at @s run function gu:generate
data modify storage cartographer_mob_utils:leashing data.hex_UUID set from storage gu:main out

$execute as $(target) at @s run data modify storage cartographer_mob_utils:leashing data.offset set from entity @s data.leash_offset

$execute as $(target) at @s run data modify storage cartographer_mob_utils:leashing data.nbt set from entity @s data.leash_entity.nbt
$execute as $(target) at @s run data modify storage cartographer_mob_utils:leashing data.entity_id set from entity @s data.leash_entity.id
$execute as $(target) at @s run data remove storage cartographer_mob_utils:leashing data.entity.id

$execute as $(target) at @s run function carto_event:event/mob_utils/leashing/setup/do_offset with storage cartographer_mob_utils:leashing data

$execute as $(target) at @s run tag @s add ca.custom_leashed

return 0