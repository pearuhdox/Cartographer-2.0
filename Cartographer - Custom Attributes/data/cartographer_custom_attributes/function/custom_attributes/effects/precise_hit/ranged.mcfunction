execute on origin run scoreboard players operation $precise_hit_chance_ranged ca.attr_var = @s ca.attr_precise_hit_chance_total

execute on origin run scoreboard players operation $precise_hit_amt_val_ranged ca.attr_var = @s ca.attr_precise_hit_damage_value
execute on origin run scoreboard players operation $precise_hit_amt_perc_ranged ca.attr_var = @s ca.attr_precise_hit_damage_percent

scoreboard players operation @s ca.attr_precise_hit_chance_total = $precise_hit_chance_ranged ca.attr_var
scoreboard players operation @s ca.attr_precise_hit_damage_value = $precise_hit_amt_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_precise_hit_damage_percent = $precise_hit_amt_perc_ranged ca.attr_var