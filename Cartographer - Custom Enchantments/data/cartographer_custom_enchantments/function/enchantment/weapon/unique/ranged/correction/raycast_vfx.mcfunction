scoreboard players remove @s ca.raycast 1

execute if score $type ca.ench_correction_lvl matches 2.. run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force
execute if score $type ca.ench_correction_lvl matches 1.. unless entity @a[distance=..3] run particle minecraft:glow ~ ~ ~ 0 0 0 0 1 force

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.33 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/correction/raycast_vfx