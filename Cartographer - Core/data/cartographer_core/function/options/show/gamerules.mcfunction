execute if entity @s[gamemode=creative] unless entity @s[tag=ca.using_dialog_menu] run function cartographer_core:options/show/temp_disable_fdbk

execute if entity @s[gamemode=creative] run dialog show @s cartographer_core:gamerule_root

execute unless entity @s[gamemode=creative] run dialog clear @s
execute unless entity @s[gamemode=creative] run tellraw @s {"color":"red","text":"Invalid Permissions: User must be in Creative Mode!"}
