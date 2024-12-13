execute store result score $easter_egg ca.ench_eruption_lvl run random value 1..1000
#execute if score $easter_egg ca.ench_eruption_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/eruption/custom_skin/lmao

execute unless entity @s[tag=ca.player_spawned] run function cartographer_custom_enchantments:enchantment/passive/eruption/custom_skin/enemy_default

#Any future custom skins go here