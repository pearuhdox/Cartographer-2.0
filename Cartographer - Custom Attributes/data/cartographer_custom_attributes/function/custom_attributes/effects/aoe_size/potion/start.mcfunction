execute on origin if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $throwable_val ca.attr_aoe_size_value += @s ca.attr_aoe_size_value

execute on origin if score @s ca.attr_aoe_size_percent matches -10000.. run scoreboard players operation $throwable_val ca.attr_aoe_size_value *= @s ca.attr_aoe_size_percent
execute on origin if score @s ca.attr_aoe_size_percent matches -10000.. run scoreboard players operation $throwable_val ca.attr_aoe_size_value /= $100 ca.CONSTANT


tag @s add ca.has_attribute_data
tag @s add ca.needs_checker
tag @s add ca.potion_owner_req
