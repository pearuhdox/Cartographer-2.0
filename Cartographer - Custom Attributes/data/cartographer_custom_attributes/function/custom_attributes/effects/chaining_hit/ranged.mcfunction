execute on origin run scoreboard players operation $chaining_chance_ranged ca.attr_var = @s ca.attr_chaining_chance_total

execute on origin run scoreboard players operation $chaining_dmg_val_ranged ca.attr_var = @s ca.attr_chaining_damage_value
execute on origin run scoreboard players operation $chaining_dmg_perc_ranged ca.attr_var = @s ca.attr_chaining_damage_percent

execute on origin run scoreboard players operation $chaining_amt_val_ranged ca.attr_var = @s ca.attr_chaining_amount_value
execute on origin run scoreboard players operation $chaining_amt_perc_ranged ca.attr_var = @s ca.attr_chaining_amount_percent

scoreboard players operation @s ca.attr_chaining_chance_total = $chaining_chance_ranged ca.attr_var

scoreboard players operation @s ca.attr_chaining_damage_value = $chaining_dmg_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_chaining_damage_percent = $chaining_dmg_perc_ranged ca.attr_var

scoreboard players operation @s ca.attr_chaining_amount_value = $chaining_amt_val_ranged ca.attr_var
scoreboard players operation @s ca.attr_chaining_amount_percent = $chaining_amt_perc_ranged ca.attr_var