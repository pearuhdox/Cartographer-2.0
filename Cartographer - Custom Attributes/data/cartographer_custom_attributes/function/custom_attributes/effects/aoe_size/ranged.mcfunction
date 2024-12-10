execute on origin run scoreboard players operation $aoe_size_val ca.attr_var = @s ca.attr_aoe_size_value
execute on origin run scoreboard players operation $aoe_size_perc ca.attr_var = @s ca.attr_aoe_size_percent

scoreboard players operation @s ca.attr_aoe_size_value = $aoe_size_val ca.attr_var
scoreboard players operation @s ca.attr_aoe_size_percent = $aoe_size_perc ca.attr_var

execute store result storage cartographer:custom_attributes projectile.aoe_size_value double 0.01 run scoreboard players get @s ca.attr_aoe_size_value
execute store result storage cartographer:custom_attributes projectile.aoe_size_percent double 0.01 run scoreboard players get @s ca.attr_aoe_size_percent