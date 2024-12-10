scoreboard players set $percent ca.attr_var 0
scoreboard players set $value ca.attr_var 0

scoreboard players set $percent_add ca.attr_var 0
scoreboard players set $value_add ca.attr_var 0

execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_feet_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_legs_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_body_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_head_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_offh_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_main_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_effect_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_event_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_ench_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var
execute store result score $value_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_user_value 1000000000000
scoreboard players operation $value ca.attr_var += $value_add ca.attr_var

execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_feet_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_legs_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_body_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_head_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_offh_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_main_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_effect_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_event_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_ench_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var
execute store result score $percent_add ca.attr_var run attribute @s oxygen_bonus modifier value get ca.attr_healing_power_user_percent 1000000000000
scoreboard players operation $percent ca.attr_var += $percent_add ca.attr_var

scoreboard players set $attr_used ca.attr_var 0
execute unless score $percent ca.attr_var matches 0 run scoreboard players set $attr_used ca.attr_var 1
execute unless score $value ca.attr_var matches 0 run scoreboard players set $attr_used ca.attr_var 1
#BASE VALUE ADDED HERE
execute if score $attr_used ca.attr_var matches 1.. run scoreboard players add $value ca.attr_var 0


scoreboard players add $percent ca.attr_var 100

scoreboard players operation $total ca.attr_var = $value ca.attr_var

scoreboard players operation $total ca.attr_var *= $percent ca.attr_var
scoreboard players operation $total ca.attr_var /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_healing_power_value = $value ca.attr_var
scoreboard players operation @s ca.attr_healing_power_percent = $percent ca.attr_var
scoreboard players operation @s ca.attr_healing_power_total = $total ca.attr_var

execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_healing_power_value -2000000
execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_healing_power_percent -2000000
execute if score $attr_used ca.attr_var matches 0 run scoreboard players set @s ca.attr_healing_power_total -2000000