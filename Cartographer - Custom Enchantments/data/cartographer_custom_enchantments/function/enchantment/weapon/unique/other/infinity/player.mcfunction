execute if entity @s[tag=ca.infinity_restore_inv] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/restore

#No Entities are created so there are no edge cases to check

#execute if score @s ca.use_firework_rocket matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/check_edgecases
#execute if score @s ca.use_water_bucket matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/check_edgecases
#execute if score @s ca.use_lava_bucket matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/check_edgecases
#execute if score @s ca.use_powder_snow_bucket matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/check_edgecases


function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/reset_scores