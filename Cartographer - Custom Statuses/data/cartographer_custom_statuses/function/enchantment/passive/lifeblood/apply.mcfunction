scoreboard players operation $cap ca.ench_var = $value ca.ench_var
scoreboard players operation $cap ca.ench_var *= $4 ca.CONSTANT

execute store result score $max ca.ench_var run attribute @s max_health get

scoreboard players operation $cap ca.ench_var < $max ca.ench_var

scoreboard players operation $amount ca.abs_handler = $value ca.ench_var
scoreboard players set $duration ca.abs_handler 15
scoreboard players operation $cap ca.abs_handler = $cap ca.ench_var

execute unless entity @s[type=player] run scoreboard players operation @s ca.absorption_buffer += $amount ca.abs_handler

function cartographer_core:handlers/absorption/add

execute unless entity @s[type=player] if score @s ca.absorption_buffer matches 2.. at @s anchored eyes positioned ^ ^-0.75 ^ run function cartographer_custom_statuses:enchantment/passive/lifeblood/popup_rec
