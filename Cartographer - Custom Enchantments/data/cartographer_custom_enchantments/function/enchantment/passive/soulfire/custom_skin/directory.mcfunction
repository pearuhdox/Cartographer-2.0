execute store result score $easter_egg ca.ench_soulfire_lvl run random value 1..1000
#execute if score $easter_egg ca.ench_soulfire_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_skin/lmao

execute unless entity @s[tag=ca.player_spawned] run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_skin/enemy_default

execute if score $user_id ca.ench_soulfire_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/soulfire/custom_skin/mato

#Any future custom skins go here