execute if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players set $custom_ranged_damage ca.attr_var 1
execute if score @s ca.attr_ranged_velocity_total matches -1999999.. run scoreboard players set $custom_ranged_velocity ca.attr_var 1

execute if score @s ca.attr_aoe_size_total matches -1999999.. run scoreboard players set $custom_aoe_size ca.attr_var 1
execute if score @s ca.attr_potion_size_total matches -1999999.. run scoreboard players set $custom_potion_size ca.attr_var 1

execute if score @s ca.attr_life_drain_chance_total matches -1999999.. run scoreboard players set $life_drain ca.attr_var 1
execute if score @s ca.attr_precise_hit_chance_total matches -1999999.. run scoreboard players set $precise_hit ca.attr_var 1
execute if score @s ca.attr_chaining_chance_total matches -1999999.. run scoreboard players set $chaining_hit ca.attr_var 1
execute if score @s ca.attr_restrike_chance_total matches -1999999.. run scoreboard players set $restrike_hit ca.attr_var 1
