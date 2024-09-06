#ranged damage
function cartographer_custom_attributes:register/get_arrow_attr_data {attribute:"ranged_damage",base_value:0}

#ranged velocity
function cartographer_custom_attributes:register/get_arrow_attr_data {attribute:"ranged_velocity",base_value:100}

execute if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players set $custom_ranged_damage ca.attr_var 1
execute if score @s ca.attr_ranged_velocity_total matches -1999999.. unless score @s ca.attr_ranged_velocity_total matches 0 run scoreboard players set $custom_ranged_velocity ca.attr_var 1