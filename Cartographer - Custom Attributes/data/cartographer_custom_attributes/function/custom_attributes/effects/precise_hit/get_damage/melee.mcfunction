execute on attacker store result score $damage ca.precise_hit_var run attribute @s attack_damage get 100

execute on attacker unless predicate bb:cant_crit run scoreboard players operation $damage ca.precise_hit_var *= $150 ca.CONSTANT
execute on attacker unless predicate bb:cant_crit run scoreboard players operation $damage ca.precise_hit_var /= $100 ca.CONSTANT