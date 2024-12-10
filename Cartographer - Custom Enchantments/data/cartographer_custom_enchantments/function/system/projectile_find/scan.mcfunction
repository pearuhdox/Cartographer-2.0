execute as @e[type=#cartographer_core:projectile_fishing_bobber,nbt=!{inGround:1b}] at @s run function cartographer_custom_enchantments:system/projectile_find/check_uuid with storage cartographer:custom_enchantments

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_enchantments,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:system/projectile_find/get_data

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_enchantments] at @s run tag @s remove ca.projectile_target_owned_enchantments