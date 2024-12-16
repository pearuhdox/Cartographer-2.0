execute if score @s ca.ench_piercing_lvl matches 1.. run scoreboard players remove @s ca.ench_piercing_lvl 1

execute unless score @s ca.ench_loyalty_lvl matches 1.. unless score @s ca.ench_piercing_lvl matches 1.. run kill @s

playsound minecraft:item.trident.hit player @a[distance=..16] ~ ~ ~ 0.85 0.7


$execute as $(owner) at @s run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

scoreboard players operation $grappling ca.ench_value = @s ca.ench_grappling_lvl

execute if score @s ca.ench_grappling_lvl matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate with storage cartographer:custom_enchantments