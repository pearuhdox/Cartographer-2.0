scoreboard players operation $time ca.ench_var *= $85 ca.CONSTANT
scoreboard players operation $time ca.ench_var /= $100 ca.CONSTANT

scoreboard players add $cap ca.ench_var 2
execute if score $cap ca.ench_var matches 13.. run scoreboard players set $cap ca.ench_var 12

scoreboard players remove $value ca.ench_var 1

execute if score $value ca.ench_var matches 1.. run function cartographer_custom_statuses:enchantment/passive/shielding/rec
