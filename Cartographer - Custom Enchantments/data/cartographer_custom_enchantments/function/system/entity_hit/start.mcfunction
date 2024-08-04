scoreboard players set $vengeance_damage ca.vengeance_stack 0
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack = @s ca.ench_vengeance_lvl
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack *= $3 ca.CONSTANT

