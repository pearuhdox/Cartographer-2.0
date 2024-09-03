scoreboard players set $custom_ranged_damage ca.attr_var 0
scoreboard players set $custom_ranged_velocity ca.attr_var 0
data modify storage cartographer:custom_attributes projectile set value {}

execute if entity @s[type=#bb:projectile] on origin if score @s ca.attr_ranged_damage_value matches -10000.. run scoreboard players set $custom_ranged_damage ca.attr_var 1
execute if entity @s[type=#bb:projectile] on origin if score @s ca.attr_ranged_velocity_total matches -10000.. run scoreboard players set $custom_ranged_velocity ca.attr_var 1

execute if entity @s[type=#bb:projectile] on origin if score @s ca.attr_aoe_size_total matches -10000.. run scoreboard players set $custom_aoe_size ca.attr_var 1
execute if entity @s[type=#bb:projectile] on origin if score @s ca.attr_potion_size_total matches -10000.. run scoreboard players set $custom_potion_size ca.attr_var 1

execute if score $custom_ranged_damage ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/start
execute if score $custom_ranged_velocity ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_velocity/start

scoreboard players set $throwable_val ca.attr_aoe_size_value 300
execute if score $custom_aoe_size ca.attr_var matches 1.. if entity @s[type=potion] run function cartographer_custom_attributes:custom_attributes/effects/aoe_size/potion/start
execute if score $custom_potion_size ca.attr_var matches 1.. if entity @s[type=potion] run function cartographer_custom_attributes:custom_attributes/effects/potion_size/potion/start



execute if entity @s[tag=ca.potion_owner_req] on origin run function gu:generate
data modify storage cartographer:custom_attributes projectile.owner set from storage gu:main out
