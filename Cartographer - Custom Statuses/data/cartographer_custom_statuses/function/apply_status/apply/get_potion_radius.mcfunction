
scoreboard players set $potion_radius ca.status_var 400

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $potion_radius ca.status_var += @s ca.attr_aoe_size_value
execute if score @s ca.attr_potion_size_value matches -1999999.. run scoreboard players operation $potion_radius ca.status_var += @s ca.attr_potion_size_value

execute if score @s ca.attr_potion_size_percent matches -1999999.. run scoreboard players operation $potion_radius ca.status_var *= @s ca.attr_potion_size_percent
execute if score @s ca.attr_potion_size_percent matches -1999999.. run scoreboard players operation $potion_radius ca.status_var /= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $potion_radius ca.status_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $potion_radius ca.status_var /= $100 ca.CONSTANT