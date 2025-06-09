execute unless block ~ ~-0.9 ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0
execute if score @s ca.raycast matches 1.. run scoreboard players remove @s ca.raycast 1

execute if score @s ca.raycast matches 0 align y positioned ~ ~0.05 ~ run function cartographer_custom_enchantments:enchantment/passive/quake/attempt_create

execute positioned ~ ~-1 ~ if score @s ca.raycast matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/charge_location_rec