scoreboard players set $adv_rolls ca.attr_combat_luck_total 0

scoreboard players operation $adv_rolls ca.attr_combat_luck_total = @s ca.attr_combat_luck_total
scoreboard players operation $adv_rolls ca.attr_combat_luck_total /= $100 ca.CONSTANT
scoreboard players remove $adv_rolls ca.attr_combat_luck_total 1

scoreboard players operation $adv_chance ca.attr_combat_luck_total = @s ca.attr_combat_luck_total
scoreboard players operation $adv_chance ca.attr_combat_luck_total %= $100 ca.CONSTANT
execute store result score $random ca.attr_combat_luck_total run random value 1..100
execute if score $random ca.attr_combat_luck_total <= $adv_chance ca.attr_combat_luck_total run scoreboard players add $adv_rolls ca.attr_combat_luck_total 1