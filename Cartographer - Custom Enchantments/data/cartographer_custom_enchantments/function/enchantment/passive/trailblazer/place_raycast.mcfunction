scoreboard players remove @s ca.raycast 1

execute unless block ~ ~-0.5 ~ #cartographer_core:can_raycast store result storage cartographer:custom_enchantments y double 0.01 run scoreboard players get $y ca.ench_trailblazer_lvl
execute unless block ~ ~-0.5 ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/passive/trailblazer/place_macro with storage cartographer:custom_enchantments
execute unless block ~ ~-0.5 ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

scoreboard players remove $y ca.ench_trailblazer_lvl 100

execute if score @s ca.raycast matches 1.. positioned ~ ~-1 ~ run function cartographer_custom_enchantments:enchantment/passive/trailblazer/place_raycast