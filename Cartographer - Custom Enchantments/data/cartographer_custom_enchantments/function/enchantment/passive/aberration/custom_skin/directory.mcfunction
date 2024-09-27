execute store result score $easter_egg ca.ench_aberration_lvl run random value 1..1000
execute if score $easter_egg ca.ench_aberration_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/lmao

execute if score $is_player ca.ench_aberration_lvl matches 0 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/enemy_default

#Any future custom skins go here