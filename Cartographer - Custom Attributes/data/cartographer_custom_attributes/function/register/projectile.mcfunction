scoreboard players set $custom_ranged_damage ca.attr_var 0
scoreboard players set $custom_ranged_velocity ca.attr_var 0

scoreboard players set $custom_aoe_size ca.attr_var 0
scoreboard players set $custom_potion_size ca.attr_var 0

scoreboard players set $life_drain ca.attr_var 0
scoreboard players set $lucky_hit ca.attr_var 0
scoreboard players set $chaining_hit ca.attr_var 0
scoreboard players set $restrike_hit ca.attr_var 0

data modify storage cartographer:custom_attributes projectile set value {}

execute if entity @s[type=#bb:projectile] on origin run function cartographer_custom_attributes:register/projectile_branch
execute if entity @s[type=fishing_bobber] on origin run function cartographer_custom_attributes:register/projectile_branch

execute if entity @s[type=#bb:arrow,tag=!ca.no_attr_calc] run function cartographer_custom_attributes:register/get_arrow_item_data_pre


execute unless entity @s[tag=ca.no_attr_calc] unless entity @s[tag=ca.no_ranged_calc] if score $custom_ranged_damage ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/start
execute if score $custom_ranged_damage ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/data
execute if score @s ca.attr_ranged_damage_value matches -1999999.. if entity @s[type=trident] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/convert_start
execute if score @s ca.attr_ranged_damage_value matches -1999999.. if entity @s[type=trident] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/convert with storage cartographer_custom_attributes:trident

execute unless entity @s[tag=ca.no_attr_calc] unless entity @s[tag=ca.multishot_spawned] if score $custom_ranged_velocity ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_velocity/start

#Gain all Life Drain, Precise Hit, Chain Hit, and Restrike Hit data here
execute unless entity @s[tag=ca.no_attr_calc] if score $life_drain ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/ranged
execute if score $life_drain ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/data

execute unless entity @s[tag=ca.no_attr_calc] if score $lucky_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/ranged
execute if score $lucky_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/data

execute unless entity @s[tag=ca.no_attr_calc] if score $chaining_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/ranged
execute if score $chaining_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/data

execute unless entity @s[tag=ca.no_attr_calc] if score $restrike_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/ranged
execute if score $restrike_hit ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/data

execute unless entity @s[tag=ca.no_attr_calc] if score $custom_aoe_size ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/aoe_size/ranged
execute if score $custom_aoe_damage ca.attr_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/aoe_damage/ranged


scoreboard players set $throwable_val ca.attr_aoe_size_value 400
execute unless entity @s[tag=ca.no_attr_calc] if score $custom_aoe_size ca.attr_var matches 1.. if entity @s[type=#cartographer_core:potions] run function cartographer_custom_attributes:custom_attributes/effects/aoe_size/potion/start
execute unless entity @s[tag=ca.no_attr_calc] if score $custom_potion_size ca.attr_var matches 1.. if entity @s[type=#cartographer_core:potions] run function cartographer_custom_attributes:custom_attributes/effects/potion_size/potion/start

execute unless entity @s[tag=ca.no_attr_calc] if entity @s[type=#cartographer_core:potions] run scoreboard players operation @s ca.attr_aoe_size_total = $throwable_val ca.attr_aoe_size_value
execute if entity @s[type=#cartographer_core:potions] store result storage cartographer:custom_attributes projectile.radius double 0.01 run scoreboard players get @s ca.attr_aoe_size_total

#execute if entity @s[type=#bb:arrow] run function cartographer_custom_attributes:register/get_arrow_item_data

execute if entity @s[tag=ca.potion_owner_req] on origin run function gu:generate
execute if entity @s[type=fishing_bobber] on origin run function gu:generate
data modify storage cartographer:custom_attributes projectile.owner set from storage gu:main out
