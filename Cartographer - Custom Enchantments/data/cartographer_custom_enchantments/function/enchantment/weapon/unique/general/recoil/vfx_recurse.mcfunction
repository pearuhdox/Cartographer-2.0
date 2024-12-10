scoreboard players remove @s ca.raycast 1

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0
execute if score @s ca.raycast matches 0 run particle minecraft:gust ^ ^ ^-1 0 0 0 0 1 force

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^1 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/vfx_recurse