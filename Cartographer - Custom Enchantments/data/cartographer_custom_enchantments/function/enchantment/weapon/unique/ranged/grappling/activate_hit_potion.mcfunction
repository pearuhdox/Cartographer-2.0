data modify storage cartographer:custom_enchantments owner set from storage cartographer:custom_enchantments active_projectile.owner

execute unless entity @s[tag=ca.has_custom_status_grounded] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate with storage cartographer:custom_enchantments