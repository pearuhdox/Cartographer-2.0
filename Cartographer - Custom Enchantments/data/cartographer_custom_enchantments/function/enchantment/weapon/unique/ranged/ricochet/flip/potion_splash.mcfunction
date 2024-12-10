data modify storage cartographer_custom_enchantments:ricochet_potion data set value {}
data modify storage cartographer_custom_enchantments:ricochet_potion data set from entity @s

execute summon potion run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/potion_splash_branch

execute on passengers if entity @s[type=marker] run function #minecraft:cartographer/api/handlers/checkers/projectile_hit