execute on origin run scoreboard players operation $throwable_val ca.attr_ranged_damage_value = @s ca.attr_ranged_damage_value

execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $throwable_val ca.attr_ranged_damage_value *= @s ca.attr_ranged_damage_percent
execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $throwable_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT


scoreboard players operation @s ca.attr_ranged_damage_total = $throwable_val ca.attr_ranged_damage_value

execute store result storage cartographer:custom_attributes projectile.damage double 0.01 run scoreboard players get @s ca.attr_ranged_damage_total

tag @s add ca.has_attribute_data
tag @s add ca.needs_checker
tag @s add ca.potion_owner_req