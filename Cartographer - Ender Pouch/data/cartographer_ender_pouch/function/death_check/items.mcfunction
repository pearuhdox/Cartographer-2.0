data modify storage cartographer:core death_uuid set value []
data modify storage cartographer:core death_uuid set from entity @s UUID

execute as @e[type=item,distance=..2] at @s run function cartographer_ender_pouch:death_check/item_branch