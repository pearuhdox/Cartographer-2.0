execute as @e[type=#bb:projectile,nbt=!{inGround:1b}] at @s run function cartographer_custom_attributes:system/projectile_find/check_uuid with storage cartographer:custom_attributes

execute as @e[type=#bb:projectile,tag=ca.projectile_target_owned_attributes,limit=1,sort=nearest] at @s run function cartographer_custom_attributes:system/projectile_find/get_data

execute as @e[type=#bb:projectile,tag=ca.projectile_target_owned_attributes] at @s run tag @s remove ca.projectile_target_owned_attributes