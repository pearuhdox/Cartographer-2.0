execute if entity @s[gamemode=creative] run function cartographer_core:options/show/main

execute unless entity @s[gamemode=creative] run tellraw @s {"color":"red","text":"Invalid Permissions: User must be in Creative Mode!"}