data modify storage cartographer:custom_attributes active_projectile set value {}
data modify storage cartographer:custom_attributes active_projectile set from entity @s data.attr_data.potion_attr

#Potion Damage from Ranged Damage
function cartographer_custom_attributes:system/potion_landed/target with storage cartographer:custom_attributes active_projectile