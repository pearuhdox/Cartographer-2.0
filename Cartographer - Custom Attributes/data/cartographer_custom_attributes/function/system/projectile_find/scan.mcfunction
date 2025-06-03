function cartographer_custom_attributes:system/projectile_find/reset_values

scoreboard players set $found_proj ca.uuid_check 0

execute as @e[type=#cartographer_core:projectile_fishing_bobber,nbt=!{inGround:1b},tag=!ca.no_damage] at @s run function cartographer_custom_attributes:system/projectile_find/check_uuid with storage cartographer:custom_attributes

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_attributes,limit=1,sort=nearest] at @s run function cartographer_custom_attributes:system/projectile_find/get_data

execute as @e[type=#cartographer_core:projectile_fishing_bobber,tag=ca.projectile_target_owned_attributes] at @s run tag @s remove ca.projectile_target_owned_attributes

execute unless score $found_proj ca.uuid_check matches 1.. run function cartographer_custom_attributes:system/get_attribute_information