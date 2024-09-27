particle minecraft:smoke ^ ^ ^0.25 0 0 0 0 1 force
particle minecraft:smoke ^ ^ ^-0.25 0 0 0 0 1 force

scoreboard players remove @s ca.raycast 1

execute if score @s ca.raycast matches 3.. positioned ^ ^ ^-0.5 run function cartographer_custom_enchantments:enchantment/passive/deadeye/vfx/raycast