execute on attacker store result score $damage ca.restrike_hit_var run attribute @s attack_damage get 100

execute on attacker unless predicate cartographer_core:player/cant_crit run scoreboard players operation $damage ca.restrike_hit_var *= $150 ca.CONSTANT
execute on attacker unless predicate cartographer_core:player/cant_crit run scoreboard players operation $damage ca.restrike_hit_var /= $100 ca.CONSTANT