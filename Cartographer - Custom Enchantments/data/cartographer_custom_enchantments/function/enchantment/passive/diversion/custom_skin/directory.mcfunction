execute store result score $easter_egg ca.ench_diversion_lvl run random value 1..200
execute if score $easter_egg ca.ench_diversion_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/diversion/custom_skin/lmao


#User ID Skins
#execute if score $user_id ca.ench_diversion_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/diversion/custom_skin/mato
execute if score $user_id ca.ench_diversion_lvl matches 2 run function cartographer_custom_enchantments:enchantment/passive/diversion/custom_skin/sequex

#Datapack Tag Based Skins
execute if score $user_id ca.ench_diversion_lvl matches 1000 run function cartographer_custom_enchantments:enchantment/passive/diversion/custom_skin/friend
