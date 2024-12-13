scoreboard players set $active ca.ench_lunging_lvl 0

$execute at @s on target if entity @s[distance=$(reduced_range)..$(range),gamemode=!spectator,gamemode=!creative] run scoreboard players set $active ca.ench_lunging_lvl 1

execute if score $active ca.ench_lunging_lvl matches 1.. run data modify storage cartographer:custom_enchantments Rotation set value []
execute if score $active ca.ench_lunging_lvl matches 1.. run data modify storage cartographer:custom_enchantments Rotation set from entity @s Rotation

execute if score $active ca.ench_lunging_lvl matches 1.. summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/create_telegraphing
execute if score $active ca.ench_lunging_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/mob_ai_macro with storage cartographer:custom_enchantments