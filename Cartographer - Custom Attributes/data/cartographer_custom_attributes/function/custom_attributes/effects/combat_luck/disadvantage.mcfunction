scoreboard players set $dis_rolls ca.attr_combat_luck_total 0

scoreboard players operation $dis_rolls ca.attr_combat_luck_total = @s ca.attr_combat_luck_total
scoreboard players remove $dis_rolls ca.attr_combat_luck_total 100
scoreboard players operation $dis_rolls ca.attr_combat_luck_total *= $-1 ca.CONSTANT
scoreboard players operation $dis_rolls ca.attr_combat_luck_total /= $100 ca.CONSTANT


scoreboard players operation $dis_mod ca.attr_combat_luck_total = @s ca.attr_combat_luck_total
scoreboard players operation $dis_mod ca.attr_combat_luck_total %= $100 ca.CONSTANT
execute if score $dis_mod ca.attr_combat_luck_total matches 0 run scoreboard players set $dis_mod ca.attr_combat_luck_total 100
scoreboard players set $dis_chance ca.attr_combat_luck_total 100
scoreboard players operation $dis_chance ca.attr_combat_luck_total -= $dis_mod ca.attr_combat_luck_total

execute store result score $random ca.attr_combat_luck_total run random value 1..100
execute if score $random ca.attr_combat_luck_total <= $dis_chance ca.attr_combat_luck_total run scoreboard players add $dis_rolls ca.attr_combat_luck_total 1

execute if score $dis_chance ca.attr_combat_luck_total matches ..-1 run scoreboard players set $dis_chance ca.attr_combat_luck_total 0