scoreboard players remove @s ca.raycast 1

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0
$execute unless block ~ ~ ~ #cartographer_core:can_raycast align xyz positioned ~0.5 ~0.5 ~0.5 positioned $(offset) unless block ~ ~ ~ #cartographer_custom_enchantments:immune_to_drilling run function $(function)

$execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.1 run function cartographer_custom_enchantments:enchantment/helper/find_block_hit {function:"$(function)",offset:"$(offset)"}
