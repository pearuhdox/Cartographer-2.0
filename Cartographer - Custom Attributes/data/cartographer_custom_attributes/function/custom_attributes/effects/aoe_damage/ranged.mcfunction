execute on origin run scoreboard players operation $aoe_damage_val ca.attr_var = @s ca.attr_aoe_damage_value
execute on origin run scoreboard players operation $aoe_damage_perc ca.attr_var = @s ca.attr_aoe_damage_percent

scoreboard players operation @s ca.attr_aoe_damage_value = $aoe_damage_val ca.attr_var
scoreboard players operation @s ca.attr_aoe_damage_percent = $aoe_damage_perc ca.attr_var