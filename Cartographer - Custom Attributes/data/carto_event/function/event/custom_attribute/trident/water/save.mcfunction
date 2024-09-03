data modify storage cartographer_custom_attributes:trident motion_save set value []
data modify storage cartographer_custom_attributes:trident motion_save set from entity @s Motion

execute on passengers run data modify entity @s item.components.minecraft:custom_data.WaterMotion set from storage cartographer_custom_attributes:trident motion_save