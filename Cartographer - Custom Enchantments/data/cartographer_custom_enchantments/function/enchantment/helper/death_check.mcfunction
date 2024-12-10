data modify storage cartographer:custom_enchantments death_uuid set value []
data modify storage cartographer:custom_enchantments death_uuid set from entity @s UUID

execute as @e[type=item,distance=..2] at @s run function cartographer_custom_enchantments:enchantment/helper/death_item_branch