execute on origin run scoreboard players operation $restrike_hit_chance_ranged ca.attr_var = @s ca.attr_restrike_hit_chance_total

execute on origin run scoreboard players operation $restrike_dmg_val_ranged ca.attr_var = @s ca.attr_restrike_hit_damage_value
execute on origin run scoreboard players operation $restrike_dmg_perc_ranged ca.attr_var = @s ca.attr_restrike_hit_damage_percent

execute on origin run scoreboard players operation $restrike_amt_val_ranged ca.attr_var = @s ca.attr_restrike_hit_amount_value
execute on origin run scoreboard players operation $restrike_amt_perc_ranged ca.attr_var = @s ca.attr_restrike_hit_amount_percent

execute on origin run scoreboard players operation $restrike_hit_rate_val_ranged ca.attr_var = @s ca.attr_restrike_hit_rate_value
execute on origin run scoreboard players operation $restrike_hit_rate_perc_ranged ca.attr_var = @s ca.attr_restrike_hit_rate_percent

scoreboard players operation @s ca.attr_restrike_hit_chance_total = $restrike_hit_chance_ranged ca.attr_var

scoreboard players operation @s ca.attr_restrike_hit_damage_value = $restrike_dmg_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_restrike_hit_damage_percent = $restrike_dmg_perc_ranged ca.attr_var

scoreboard players operation @s ca.attr_restrike_hit_amount_value = $restrike_amt_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_restrike_hit_amount_percent = $restrike_amt_perc_ranged ca.attr_var

scoreboard players operation @s ca.attr_restrike_hit_rate_value = $restrike_hit_rate_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_restrike_hit_rate_percent = $restrike_hit_rate_perc_ranged ca.attr_var
