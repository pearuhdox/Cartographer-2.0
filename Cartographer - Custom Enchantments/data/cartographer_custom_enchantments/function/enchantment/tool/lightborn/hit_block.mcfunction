scoreboard players set $active ca.ench_lightborn_lvl 0
execute if score @s ca.lightborn_redstone_torch matches 1.. run scoreboard players set $active ca.ench_lightborn_lvl 1 
execute if score @s ca.lightborn_soul_torch matches 1.. run scoreboard players set $active ca.ench_lightborn_lvl 1 
execute if score @s ca.lightborn_torch matches 1.. run scoreboard players set $active ca.ench_lightborn_lvl 1 

execute store result score @s ca.raycast run attribute @s block_interaction_range get 10

execute unless score @s ca.lightborn_behavior matches 1.. if predicate cartographer_core:player/sneaking as @s at @s anchored eyes positioned ^ ^ ^0.1 if score $active ca.ench_lightborn_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/lightborn/recurse
execute if score @s ca.lightborn_behavior matches 1.. unless predicate cartographer_core:player/sneaking as @s at @s anchored eyes positioned ^ ^ ^0.1 if score $active ca.ench_lightborn_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/lightborn/recurse
