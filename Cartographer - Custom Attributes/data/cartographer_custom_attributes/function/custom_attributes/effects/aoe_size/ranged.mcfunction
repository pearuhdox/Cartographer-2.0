execute on origin run scoreboard players operation $aoe_size_val ca.attr_var = @s ca.attr_aoe_size_value
execute on origin run scoreboard players operation $aoe_size_perc ca.attr_var = @s ca.attr_aoe_size_percent

scoreboard players operation @s ca.attr_aoe_size_value = $aoe_size_val ca.attr_var
scoreboard players operation @s ca.attr_aoe_size_percent = $aoe_size_perc ca.attr_var