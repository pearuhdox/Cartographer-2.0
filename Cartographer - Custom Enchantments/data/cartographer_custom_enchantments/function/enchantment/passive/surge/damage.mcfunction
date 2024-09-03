particle minecraft:gust ~ ~0.25 ~ 0 0 0 1 1 force

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage by @n[tag=ca.surge_owner]

scoreboard players set $surge_hit ca.sprint_time_surge 1

tag @s add co_rotation_lock
tp @s ~ ~ ~ facing entity @n[tag=ca.surge_owner] feet
tp @s ~ ~ ~ ~ 20
scoreboard players set @s co_send -13
scoreboard players set @s co_y 1
execute as @s at @s run function motion:motion/push
tag @s remove co_rotation_lock

tag @s add ca.surge_cdl

function carto_event:api/create_single_entity_event {event:"custom_ench/surge/cooldown",duration:20,delay:000,parameters:{},merge_behavior:"custom"}

execute unless entity @s[type=player] as @e[type=#bb:hostile,distance=0.1..4] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage_rec with storage cartographer:custom_enchantments
execute if entity @s[type=player] as @a[distance=0.1..4] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage_rec with storage cartographer:custom_enchantments