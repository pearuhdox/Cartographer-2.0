execute store result score $red_damage ca.chaining_hit_var run data get storage cartographer:custom_attributes chaining_hit_damage 100

scoreboard players operation $red_damage ca.chaining_hit_var *= $50 ca.CONSTANT
scoreboard players operation $red_damage ca.chaining_hit_var /= $100 ca.CONSTANT

execute store result storage cartographer:custom_attributes chaining_hit_damage double 0.01 run scoreboard players get $red_damage ca.chaining_hit_var