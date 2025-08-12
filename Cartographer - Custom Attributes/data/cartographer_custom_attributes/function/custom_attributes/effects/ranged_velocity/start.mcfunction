say speed up arrows

execute on origin if score @s ca.attr_ranged_velocity_total matches -1999999.. run scoreboard players operation $input_speed ca.attr_ranged_velocity_total = @s ca.attr_ranged_velocity_total

execute if entity @s[type=#bb:arrow] if score $input_speed ca.attr_ranged_velocity_total matches 2500.. run data modify entity @s NoGravity set value 1b

execute if score $input_speed ca.attr_ranged_velocity_total matches 101.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_velocity/speed_calc_positive
execute if score $input_speed ca.attr_ranged_velocity_total matches ..100 run function cartographer_custom_attributes:custom_attributes/effects/ranged_velocity/speed_calc_negative

scoreboard players operation @s ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total

scoreboard players operation $pot_speed ca.attr_ranged_velocity_total = $speed ca.attr_ranged_velocity_total
scoreboard players operation $pot_speed ca.attr_ranged_velocity_total /= $2 ca.CONSTANT

execute if score @s ca.attr_ranged_velocity_total matches 201.. run scoreboard players set @s ca.attr_ranged_velocity_total 200


execute store result score $x ca.attr_ranged_velocity_total run data get entity @s Motion[0] 100
execute store result score $y ca.attr_ranged_velocity_total run data get entity @s Motion[1] 100
execute store result score $z ca.attr_ranged_velocity_total run data get entity @s Motion[2] 100

execute unless entity @s[type=#cartographer_core:potions] run scoreboard players operation $x ca.attr_ranged_velocity_total *= $speed ca.attr_ranged_velocity_total
execute unless entity @s[type=#cartographer_core:potions] run scoreboard players operation $y ca.attr_ranged_velocity_total *= $speed ca.attr_ranged_velocity_total
execute unless entity @s[type=#cartographer_core:potions] run scoreboard players operation $z ca.attr_ranged_velocity_total *= $speed ca.attr_ranged_velocity_total

execute if entity @s[type=#cartographer_core:potions] run scoreboard players operation $x ca.attr_ranged_velocity_total *= $speed ca.attr_ranged_velocity_total
execute if entity @s[type=#cartographer_core:potions] run scoreboard players operation $y ca.attr_ranged_velocity_total *= $pot_speed ca.attr_ranged_velocity_total
execute if entity @s[type=#cartographer_core:potions] run scoreboard players operation $z ca.attr_ranged_velocity_total *= $speed ca.attr_ranged_velocity_total


scoreboard players operation $x ca.attr_ranged_velocity_total /= $100 ca.CONSTANT
scoreboard players operation $y ca.attr_ranged_velocity_total /= $100 ca.CONSTANT
scoreboard players operation $z ca.attr_ranged_velocity_total /= $100 ca.CONSTANT

execute if score $x ca.attr_ranged_velocity_total matches 1001.. run scoreboard players set $x ca.attr_ranged_velocity_total 1000
execute if score $y ca.attr_ranged_velocity_total matches 1001.. run scoreboard players set $y ca.attr_ranged_velocity_total 1000
execute if score $z ca.attr_ranged_velocity_total matches 1001.. run scoreboard players set $z ca.attr_ranged_velocity_total 1000


execute store result entity @s Motion[0] double 0.01 run scoreboard players get $x ca.attr_ranged_velocity_total
execute store result entity @s Motion[1] double 0.01 run scoreboard players get $y ca.attr_ranged_velocity_total
execute store result entity @s Motion[2] double 0.01 run scoreboard players get $z ca.attr_ranged_velocity_total

execute if entity @s[type=!#bb:arrow,tag=!ca.custom_trident] run function carto_event:api/create_single_entity_event {event:"custom_attribute/projectile_air_fix",duration:100,delay:0,parameters:{},merge_behavior:"none"}