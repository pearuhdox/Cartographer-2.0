execute on attacker run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

#scoreboard players operation $grappling ca.ench_value = @s ca.ench_grappling_lvl

execute unless entity @s[tag=ca.has_custom_status_grounded] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate with storage cartographer:custom_enchantments