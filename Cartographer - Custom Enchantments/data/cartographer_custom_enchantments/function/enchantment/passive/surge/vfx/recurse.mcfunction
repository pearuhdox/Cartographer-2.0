particle minecraft:dust_plume ~ ~ ~ 0.25 0.25 0.25 0 3 normal

scoreboard players remove @s ca.raycast 5
execute if score @s ca.raycast matches 5.. positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/surge/vfx/recurse