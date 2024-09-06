scoreboard players set $life_drain_chance ca.attr_apply_var -2000000
scoreboard players set $life_drain_amount_flat ca.attr_apply_var -2000000
scoreboard players set $life_drain_amount_percent ca.attr_apply_var -2000000
scoreboard players set $precise_hit_chance ca.attr_apply_var -2000000
scoreboard players set $precise_hit_damage_flat ca.attr_apply_var -2000000
scoreboard players set $precise_hit_damage_percent ca.attr_apply_var -2000000
scoreboard players set $chaining_chance ca.attr_apply_var -2000000
scoreboard players set $chaining_amount_flat ca.attr_apply_var -2000000
scoreboard players set $chaining_amount_percent ca.attr_apply_var -2000000
scoreboard players set $chaining_damage_flat ca.attr_apply_var -2000000
scoreboard players set $chaining_damage_percent ca.attr_apply_var -2000000
scoreboard players set $restrike_chance ca.attr_apply_var -2000000
scoreboard players set $restrike_amount_flat ca.attr_apply_var -2000000
scoreboard players set $restrike_amount_percent ca.attr_apply_var -2000000
scoreboard players set $restrike_damage_flat ca.attr_apply_var -2000000
scoreboard players set $restrike_damage_percent ca.attr_apply_var -2000000
scoreboard players set $restrike_rate_flat ca.attr_apply_var -2000000
scoreboard players set $restrike_rate_percent ca.attr_apply_var -2000000
scoreboard players set $aoe_size_flat ca.attr_apply_var -2000000
scoreboard players set $aoe_size_percent ca.attr_apply_var -2000000
scoreboard players set $aoe_damage_flat ca.attr_apply_var -2000000
scoreboard players set $aoe_damage_percent ca.attr_apply_var -2000000


execute if score @s ca.attr_life_drain_chance_total matches -1999999.. run scoreboard players operation $life_drain_chance ca.attr_apply_var = @s ca.attr_life_drain_chance_total

execute if score @s ca.attr_life_drain_amount_value matches -1999999.. run scoreboard players operation $life_drain_amount_flat ca.attr_apply_var = @s ca.attr_life_drain_amount_value
execute if score @s ca.attr_life_drain_amount_percent matches -1999999.. run scoreboard players operation $life_drain_amount_percent ca.attr_apply_var = @s ca.attr_life_drain_amount_percent


execute if score @s ca.attr_precise_hit_chance_total matches -1999999.. run scoreboard players operation $precise_hit_chance ca.attr_apply_var = @s ca.attr_precise_hit_chance_total

execute if score @s ca.attr_precise_hit_damage_value matches -1999999.. run scoreboard players operation $precise_hit_damage_flat ca.attr_apply_var = @s ca.attr_precise_hit_damage_value
execute if score @s ca.attr_precise_hit_damage_percent matches -1999999.. run scoreboard players operation $precise_hit_damage_percent ca.attr_apply_var = @s ca.attr_precise_hit_damage_percent


execute if score @s ca.attr_chaining_chance_total matches -1999999.. run scoreboard players operation $chaining_chance ca.attr_apply_var = @s ca.attr_chaining_chance_total

execute if score @s ca.attr_chaining_amount_value matches -1999999.. run scoreboard players operation $chaining_amount_flat ca.attr_apply_var = @s ca.attr_chaining_amount_value
execute if score @s ca.attr_chaining_amount_percent matches -1999999.. run scoreboard players operation $chaining_amount_percent ca.attr_apply_var = @s ca.attr_chaining_amount_percent

execute if score @s ca.attr_chaining_damage_value matches -1999999.. run scoreboard players operation $chaining_damage_flat ca.attr_apply_var = @s ca.attr_chaining_damage_value
execute if score @s ca.attr_chaining_damage_percent matches -1999999.. run scoreboard players operation $chaining_damage_percent ca.attr_apply_var = @s ca.attr_chaining_damage_percent


execute if score @s ca.attr_restrike_chance_total matches -1999999.. run scoreboard players operation $restrike_chance ca.attr_apply_var = @s ca.attr_restrike_chance_total

execute if score @s ca.attr_restrike_amount_value matches -1999999.. run scoreboard players operation $restrike_amount_flat ca.attr_apply_var = @s ca.attr_restrike_amount_value
execute if score @s ca.attr_restrike_amount_percent matches -1999999.. run scoreboard players operation $restrike_amount_percent ca.attr_apply_var = @s ca.attr_restrike_amount_percent

execute if score @s ca.attr_restrike_damage_value matches -1999999.. run scoreboard players operation $restrike_damage_flat ca.attr_apply_var = @s ca.attr_restrike_damage_value
execute if score @s ca.attr_restrike_damage_percent matches -1999999.. run scoreboard players operation $restrike_damage_percent ca.attr_apply_var = @s ca.attr_restrike_damage_percent

execute if score @s ca.attr_restrike_rate_value matches -1999999.. run scoreboard players operation $restrike_rate_flat ca.attr_apply_var = @s ca.attr_restrike_rate_value
execute if score @s ca.attr_restrike_rate_percent matches -1999999.. run scoreboard players operation $restrike_rate_percent ca.attr_apply_var = @s ca.attr_restrike_rate_percent


execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $aoe_size_flat ca.attr_apply_var = @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $aoe_size_percent ca.attr_apply_var = @s ca.attr_aoe_size_percent


execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $aoe_damage_flat ca.attr_apply_var = @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage_percent ca.attr_apply_var = @s ca.attr_aoe_damage_percent

#say data from player