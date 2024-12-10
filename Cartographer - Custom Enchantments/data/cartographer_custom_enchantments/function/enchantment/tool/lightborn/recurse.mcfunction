scoreboard players remove @s ca.raycast 1

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0
execute unless block ~ ~ ~ #cartographer_core:can_raycast positioned ^ ^ ^-0.1 run function cartographer_custom_enchantments:enchantment/tool/lightborn/place

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.1 run function cartographer_custom_enchantments:enchantment/tool/lightborn/recurse
