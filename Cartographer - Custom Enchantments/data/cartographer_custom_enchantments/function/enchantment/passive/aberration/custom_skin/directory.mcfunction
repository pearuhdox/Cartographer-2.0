execute store result score $easter_egg ca.ench_aberration_lvl run random value 1..200
execute if score $easter_egg ca.ench_aberration_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/lmao

execute if score $is_player ca.ench_aberration_lvl matches 0 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/enemy_default

execute if score $user_id ca.ench_aberration_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/mato
execute if score $user_id ca.ench_aberration_lvl matches 10 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/slimeking
execute if score $user_id ca.ench_aberration_lvl matches 20 run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/matt97

#Any future custom skins go here