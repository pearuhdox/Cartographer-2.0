scoreboard players set $adv_rolls ca.attr_combat_luck_total 0

execute if score @s ca.attr_combat_luck_total matches -1999999.. unless score @s ca.attr_combat_luck_total matches ..100 run function cartographer_custom_attributes:custom_attributes/effects/combat_luck/advantage
scoreboard players operation $advantage ca.rand += $adv_rolls ca.attr_combat_luck_total

scoreboard players operation $advantage ca.rand += $bonus_adv ca.rand