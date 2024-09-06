execute on origin run scoreboard players operation $life_drain_chance_ranged ca.attr_var = @s ca.attr_life_drain_chance_total

execute on origin run scoreboard players operation $life_drain_amt_val_ranged ca.attr_var = @s ca.attr_life_drain_amount_value
execute on origin run scoreboard players operation $life_drain_amt_perc_ranged ca.attr_var = @s ca.attr_life_drain_amount_percent

scoreboard players operation @s ca.attr_life_drain_chance_total = $life_drain_chance_ranged ca.attr_var
scoreboard players operation @s ca.attr_life_drain_amount_value = $life_drain_amt_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_life_drain_amount_percent = $life_drain_amt_perc_ranged ca.attr_var