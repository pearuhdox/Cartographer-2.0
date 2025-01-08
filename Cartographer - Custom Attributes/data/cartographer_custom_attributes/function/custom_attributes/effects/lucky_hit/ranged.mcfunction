execute on origin run scoreboard players operation $lucky_hit_chance_ranged ca.attr_var = @s ca.attr_lucky_hit_chance_total

execute on origin run scoreboard players operation $lucky_hit_amt_val_ranged ca.attr_var = @s ca.attr_lucky_hit_damage_value
execute on origin run scoreboard players operation $lucky_hit_amt_perc_ranged ca.attr_var = @s ca.attr_lucky_hit_damage_percent

scoreboard players operation @s ca.attr_lucky_hit_chance_total = $lucky_hit_chance_ranged ca.attr_var
scoreboard players operation @s ca.attr_lucky_hit_damage_value = $lucky_hit_amt_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_lucky_hit_damage_percent = $lucky_hit_amt_perc_ranged ca.attr_var