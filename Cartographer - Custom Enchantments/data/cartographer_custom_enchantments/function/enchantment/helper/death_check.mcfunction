data modify storage cartographer:core death_uuid set value []
data modify storage cartographer:core death_uuid set from entity @s UUID

execute if score $custom_enchantments ca.installed matches 1.. as @e[type=item,distance=..2] at @s run function cartographer_custom_enchantments:enchantment/helper/death_item_branch