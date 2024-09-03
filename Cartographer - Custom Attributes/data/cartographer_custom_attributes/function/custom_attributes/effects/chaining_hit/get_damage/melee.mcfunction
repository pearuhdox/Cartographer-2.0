execute on attacker store result score $damage ca.chaining_hit_var run attribute @s generic.attack_damage get 100

execute on attacker unless predicate bb:cant_crit run scoreboard players operation $damage ca.chaining_hit_var *= $150 ca.CONSTANT
execute on attacker unless predicate bb:cant_crit run scoreboard players operation $damage ca.chaining_hit_var /= $100 ca.CONSTANT

execute on attacker if entity @s[type=player] run data modify storage cartographer:custom_attributes chaining_damage_type set value "minecraft:player_attack"
execute on attacker unless entity @s[type=player] run data modify storage cartographer:custom_attributes chaining_damage_type set value "minecraft:mob_attack"