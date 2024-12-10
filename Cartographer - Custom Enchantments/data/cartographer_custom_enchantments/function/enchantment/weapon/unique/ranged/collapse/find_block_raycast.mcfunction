scoreboard players remove @s ca.raycast 1

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/do_break

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.05 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/find_block_raycast