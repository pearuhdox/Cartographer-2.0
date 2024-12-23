execute store result score $easter_egg ca.ench_orbit_lvl run random value 1..1000
#execute if score $easter_egg ca.ench_orbit_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/orbit/custom_skin/lmao

execute unless score $is_player ca.ench_orbit_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/orbit/custom_skin/enemy_default

execute if score $user_id ca.ench_orbit_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/orbit/custom_skin/mato

#Any future custom skins go here