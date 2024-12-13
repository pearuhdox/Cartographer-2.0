scoreboard players remove @s ca.raycast 1

#particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force

execute if block ~ ~ ~ minecraft:spawner run scoreboard players set @s ca.raycast 0
$execute if block ~ ~ ~ minecraft:spawner align xyz positioned ~0.5 ~0.5 ~0.5 positioned $(offset) run function $(function)

$execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.1 run function cartographer_custom_enchantments:enchantment/helper/spawner_find_block_hit {function:"$(function)",offset:"$(offset)"}
