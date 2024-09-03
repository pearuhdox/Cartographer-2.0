scoreboard players set $throwable_val ca.attr_aoe_size_value 300

execute on origin run scoreboard players operation $throwable_val ca.attr_aoe_size_value += @s ca.attr_potion_size_value

execute on origin if score @s ca.attr_potion_size_percent matches -10000.. run scoreboard players operation $throwable_val ca.attr_aoe_size_value *= @s ca.attr_potion_size_percent
execute on origin if score @s ca.attr_potion_size_percent matches -10000.. run scoreboard players operation $throwable_val ca.attr_aoe_size_value /= $100 ca.CONSTANT


scoreboard players operation @s ca.attr_aoe_size_total = $throwable_val ca.attr_aoe_size_value

execute store result storage cartographer:custom_attributes projectile.radius double 0.01 run scoreboard players get @s ca.attr_aoe_size_total

tag @s add ca.has_attribute_data
tag @s add ca.needs_checker
tag @s add ca.potion_owner_req

