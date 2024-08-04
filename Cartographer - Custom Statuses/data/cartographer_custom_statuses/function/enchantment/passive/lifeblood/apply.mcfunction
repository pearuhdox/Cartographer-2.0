scoreboard players operation $cap ca.ench_var = $value ca.ench_var
scoreboard players operation $cap ca.ench_var *= $4 ca.CONSTANT

execute store result score $max ca.ench_var run attribute @s generic.max_health get

scoreboard players operation $cap ca.ench_var < $max ca.ench_var

scoreboard players operation $amount ca.abs_handler = $value ca.ench_var
scoreboard players set $duration ca.abs_handler 15
scoreboard players operation $cap ca.abs_handler = $cap ca.ench_var

function cartographer_core:handlers/absorption/add
