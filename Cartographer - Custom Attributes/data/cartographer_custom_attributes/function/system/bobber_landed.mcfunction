data modify storage cartographer:custom_attributes active_projectile set value {}
data modify storage cartographer:custom_attributes active_projectile set from storage cartographer_core:fishing_bobber_data data.bobber_attr

#Potion Damage from Ranged Damage
function cartographer_custom_attributes:system/bobber_landed/target with storage cartographer:custom_attributes active_projectile