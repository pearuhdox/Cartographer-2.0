scoreboard players add @s ca.throwable_loyalty 1
execute if entity @s[tag=ca.hit_block] run scoreboard players add @s ca.throwable_loyalty 1

scoreboard players set $return_time ca.throwable_loyalty 110
scoreboard players operation $red_return_time ca.throwable_loyalty = @s ca.ench_loyalty_lvl
scoreboard players operation $red_return_time ca.throwable_loyalty *= $10 ca.CONSTANT
scoreboard players operation $return_time ca.throwable_loyalty -= $red_return_time ca.throwable_loyalty

execute if score @s ca.throwable_loyalty >= $return_time ca.throwable_loyalty unless entity @s[tag=ca.loyalty_return] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/loyalty/start with storage carto_event current[-1].parameters
execute if score @s ca.throwable_loyalty >= $return_time ca.throwable_loyalty run tag @s add ca.loyalty_return

execute if entity @s[tag=ca.loyalty_return] unless entity @s[tag=ca.hit_block] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/loyalty/return with storage carto_event current[-1].parameters
