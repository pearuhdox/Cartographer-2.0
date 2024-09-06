data modify storage cartographer:custom_attributes active_projectile set value {}
data modify storage cartographer:custom_attributes active_projectile set from entity @s data.attr_data.potion_attr

execute store result score $radius_div ca.attr_var run data get storage cartographer:custom_attributes active_projectile.radius 1000

execute store result storage cartographer:custom_attributes active_projectile.half_radius double 0.0005 run scoreboard players get $radius_div ca.attr_var

scoreboard players remove $radius_div ca.attr_var 1000
execute if score $radius_div ca.attr_var matches ..999 run scoreboard players set $radius_div ca.attr_var 1000
execute store result storage cartographer:custom_attributes active_projectile.radius1 double 0.001 run scoreboard players get $radius_div ca.attr_var

#Potion Damage from Ranged Damage
function cartographer_custom_attributes:system/potion_landed/target with storage cartographer:custom_attributes active_projectile