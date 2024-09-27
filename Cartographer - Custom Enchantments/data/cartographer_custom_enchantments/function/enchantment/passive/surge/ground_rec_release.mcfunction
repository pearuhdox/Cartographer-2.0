execute unless block ~ ~-0.25 ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0
execute unless block ~ ~-0.25 ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/passive/surge/release_branch_place with storage cartographer:custom_enchantments

scoreboard players remove @s ca.raycast 1
execute if score @s ca.raycast matches 1.. positioned ~ ~-0.25 ~ run function cartographer_custom_enchantments:enchantment/passive/surge/ground_rec_release