data modify storage cartographer:custom_enchantments owner set from storage cartographer_custom_attributes:trident owner

scoreboard players operation $grappling ca.ench_value = $trident_val ca.ench_grappling_lvl

execute unless entity @s[tag=ca.has_custom_status_grounded] if score $grappling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate with storage cartographer:custom_enchantments