scoreboard players set $adv_rolls ca.attr_combat_luck_total 0
scoreboard players set $dis_rolls ca.attr_combat_luck_total 0

execute if score @s ca.attr_combat_luck_total matches 101.. run function cartographer_custom_attributes:custom_attributes/effects/combat_luck/advantage

execute if score @s ca.attr_combat_luck_total matches ..99 run function cartographer_custom_attributes:custom_attributes/effects/combat_luck/disadvantage