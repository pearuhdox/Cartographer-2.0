execute store result score $spider_damage ca.stack_var run attribute @s attack_damage get 100

execute if entity @s[type=spider] run scoreboard players set $size ca.stack_var 150
execute if entity @s[type=cave_spider] run scoreboard players set $size ca.stack_var 80
execute store result score $scale ca.stack_var run attribute @s scale get 100

scoreboard players operation $size ca.stack_var *= $scale ca.stack_var
scoreboard players operation $size ca.stack_var /= $100 ca.CONSTANT

scoreboard players set $missing_size ca.stack_var 100
scoreboard players operation $missing_size ca.stack_var -= $size ca.stack_var

scoreboard players operation $size_1 ca.stack_var = $size ca.stack_var
scoreboard players operation $half_size ca.stack_var = $size ca.stack_var

scoreboard players remove $size_1 ca.stack_var 100

scoreboard players operation $half_size ca.stack_var /= $2 ca.CONSTANT

data modify storage cartographer_mob_utilities:stacked_spiders data set value {}
execute store result storage cartographer_mob_utilities:stacked_spiders data.size double 0.01 run scoreboard players get $size ca.stack_var
execute store result storage cartographer_mob_utilities:stacked_spiders data.size_1 double 0.01 run scoreboard players get $size_1 ca.stack_var
execute store result storage cartographer_mob_utilities:stacked_spiders data.half_size double 0.01 run scoreboard players get $half_size ca.stack_var
execute store result storage cartographer_mob_utilities:stacked_spiders data.missing_size double 0.01 run scoreboard players get $missing_size ca.stack_var

execute store result storage cartographer_mob_utilities:stacked_spiders data.damage double 0.01 run scoreboard players get $spider_damage ca.stack_var

execute if score $size ca.stack_var matches 100.. run function cartographer_mob_utils:stacking/entity/spider/test_collision_macro with storage cartographer_mob_utilities:stacked_spiders data
execute unless score $size ca.stack_var matches 100.. run function cartographer_mob_utils:stacking/entity/spider/test_collision_macro_small with storage cartographer_mob_utilities:stacked_spiders data